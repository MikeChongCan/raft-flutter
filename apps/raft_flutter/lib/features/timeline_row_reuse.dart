import 'package:flutter/widgets.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart' as chat;

/// A row cache owned by its lazy element, so retirement releases its subtree.
/// The caller includes non-message inputs in [revision]; message grouping also
/// depends on the neighbouring immutable message versions.
class TimelineReusableRow extends StatefulWidget {
  const TimelineReusableRow({
    super.key,
    required this.message,
    required this.before,
    required this.after,
    required this.revision,
    required this.builder,
  });
  final chat.Message message;
  final chat.Message? before, after;
  final Object? revision;
  final WidgetBuilder builder;

  @override
  State<TimelineReusableRow> createState() => _TimelineReusableRowState();
}

class _TimelineReusableRowState extends State<TimelineReusableRow> {
  Widget? _child;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _child = null;
  }

  @override
  void didUpdateWidget(TimelineReusableRow oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.message, widget.message) ||
        !identical(oldWidget.before, widget.before) ||
        !identical(oldWidget.after, widget.after) ||
        oldWidget.revision != widget.revision) {
      _child = null;
    }
  }

  @override
  Widget build(BuildContext context) => _child ??= widget.builder(context);
}
