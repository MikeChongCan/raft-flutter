import Cocoa
import FlutterMacOS
@testable import RaftMacTitleBar

// Only the channel transport is recorded. The production handler runs against
// real AppKit windows and real standard window buttons.
private final class Messenger: NSObject, FlutterBinaryMessenger {
  var handler: FlutterBinaryMessageHandler?
  func send(onChannel channel: String, message: Data?) {}
  func send(onChannel channel: String, message: Data?, binaryReply: FlutterBinaryReply?) {}
  func setMessageHandlerOnChannel(_ channel: String, binaryMessageHandler: FlutterBinaryMessageHandler?) -> FlutterBinaryMessengerConnection {
    handler = binaryMessageHandler
    return 1
  }
  func cleanUpConnection(_ connection: FlutterBinaryMessengerConnection) { handler = nil }
  func invoke(_ method: String, _ args: [String: Any] = [:]) -> Any? {
    let codec = FlutterStandardMethodCodec.sharedInstance()
    var reply: Any?
    handler?(codec.encode(FlutterMethodCall(methodName: method, arguments: args))) {
      if let data = $0 { reply = codec.decodeEnvelope(data) }
    }
    return reply
  }
}

private var failures: [String] = []
private func check(_ value: @autoclosure () -> Bool, _ text: String) {
  if !value() { failures.append(text) }
}
private func closeRect(_ window: NSWindow) -> NSRect {
  let button = window.standardWindowButton(.closeButton)!
  return button.convert(button.bounds, to: window.contentView)
}

_ = NSApplication.shared.setActivationPolicy(.prohibited)
let window = NSWindow(contentRect: NSRect(x: 100, y: 100, width: 1000, height: 700),
  styleMask: [.titled, .closable, .miniaturizable, .resizable], backing: .buffered, defer: false)
window.isReleasedWhenClosed = false
private let messenger = Messenger()
let titlebar = RaftTitleBar(window: window, messenger: messenger)
let standardCenter = window.contentView!.bounds.height - closeRect(window).midY

let integrated = messenger.invoke("setIntegrated", ["enabled": true, "height": 48]) as? [String: Any]
print("Native integrated geometry:", integrated ?? [:])
check(integrated?["integrated"] as? Bool == true, "the runner must accept the integrated header")
let zoom = window.standardWindowButton(.zoomButton)!
let expectedInset = Double(zoom.convert(zoom.bounds, to: window.contentView).maxX + 14)
check(integrated?["leadingInset"] as? Double == expectedInset, "the row must reserve the native controls plus their gutter")
let rect = closeRect(window)
check(abs(window.contentView!.bounds.height - rect.midY - 24) < 0.01, "traffic lights must centre on the 48pt row")
check(abs(rect.minX - 14) < 0.01, "traffic lights must keep the desktop shell's 14pt edge inset")
check(window.standardWindowButton(.closeButton)?.target != nil, "standard controls must retain native targets")

window.setContentSize(NSSize(width: 900, height: 600))
let resized = messenger.invoke("status") as? [String: Any]
check(abs(window.contentView!.bounds.height - closeRect(window).midY - 24) < 0.01, "resize must preserve traffic-light placement")
check(resized?["leadingInset"] as? Double == expectedInset, "resize must preserve the safe leading inset")

_ = messenger.invoke("setIntegrated", ["enabled": true, "height": 60])
check(abs(window.contentView!.bounds.height - closeRect(window).midY - 30) < 0.01, "a taller row must recenter the native controls")
let content = window.contentView!
for x in [100.0, 347.0, 500.0, 800.0] {
  let point = NSPoint(x: x, y: content.bounds.height - 24)
  check(content.superview?.hitTest(point) === content,
    "the transparent titlebar must leave Flutter controls clickable at x=\(x)")
}

let buttonParent = window.standardWindowButton(.closeButton)!.superview!
let parentOrigin = buttonParent.frame.origin
buttonParent.setFrameOrigin(NSPoint(x: parentOrigin.x, y: parentOrigin.y - 4))
_ = messenger.invoke("status")
check(abs(content.bounds.height - closeRect(window).midY - 30) < 0.01,
  "native container offsets must not move the controls off the shared row's centre")
buttonParent.setFrameOrigin(parentOrigin)

// A quick gesture can end before the asynchronous Dart channel reaches AppKit.
// Dispatch real AppKit events first, then request the drag as Dart would.
let beforeDrag = window.frame.origin
let stamp = ProcessInfo.processInfo.systemUptime
for (type, point, time) in [
  (NSEvent.EventType.leftMouseDown, NSPoint(x: 500, y: 300), stamp),
  (NSEvent.EventType.leftMouseUp, NSPoint(x: 620, y: 360), stamp + 0.01),
] {
  let event = NSEvent.mouseEvent(with: type, location: point, modifierFlags: [],
    timestamp: time, windowNumber: window.windowNumber, context: nil,
    eventNumber: 1, clickCount: 1, pressure: type == .leftMouseDown ? 1 : 0)!
  NSApp.sendEvent(event)
}
check(window.frame.origin == beforeDrag, "recording pointer input must not itself move the window")
_ = messenger.invoke("startDragging")
check(window.frame.origin == NSPoint(x: beforeDrag.x + 120, y: beforeDrag.y + 60),
  "a completed quick drag must still move the native window by its actual delta")
let afterDrag = window.frame.origin
_ = messenger.invoke("startDragging")
check(window.frame.origin == afterDrag, "one pointer gesture must move the window only once")
let otherWindow = NSWindow(contentRect: NSRect(x: 300, y: 100, width: 500, height: 400),
  styleMask: [.titled], backing: .buffered, defer: false)
for (type, point, time) in [
  (NSEvent.EventType.leftMouseDown, NSPoint(x: 100, y: 100), stamp + 0.02),
  (NSEvent.EventType.leftMouseUp, NSPoint(x: 250, y: 160), stamp + 0.03),
] {
  NSApp.sendEvent(NSEvent.mouseEvent(with: type, location: point, modifierFlags: [],
    timestamp: time, windowNumber: otherWindow.windowNumber, context: nil,
    eventNumber: 2, clickCount: 1, pressure: 0)!)
}
_ = messenger.invoke("startDragging")
check(window.frame.origin == afterDrag, "another window's pointer input must not move this window")

let restored = messenger.invoke("setIntegrated", ["enabled": false, "height": 48]) as? [String: Any]
check(restored?["integrated"] as? Bool == false, "leaving the workspace must restore the original titlebar")
check(restored?["leadingInset"] as? Double == 0, "the standalone strip must not reserve a second gutter")
check(window.toolbar == nil, "leaving the workspace must remove the integration toolbar")
check(abs(window.contentView!.bounds.height - closeRect(window).midY - standardCenter) < 0.01, "the original native button position must be restored")

for failure in failures { print("FAIL: \(failure)") }
print("Native integrated titlebar: 5 cases, \(failures.count) failed assertions")
withExtendedLifetime(titlebar) {}
exit(failures.isEmpty ? 0 : 1)
