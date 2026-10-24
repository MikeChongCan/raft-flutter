import 'package:flutter/widgets.dart';
import 'package:raft_ui/raft_ui.dart';

import '../data/workspace_controller.dart';
import 'system_notification_center.dart';

/// Browser header composition; the workspace supplies navigation actions and
/// the quick switcher owns the search anchor across openings.
class WorkspaceBrowserHeader extends StatelessWidget {
  const WorkspaceBrowserHeader({
    super.key,
    required this.searchKey,
    required this.workspace,
    required this.working,
    required this.controller,
    required this.onSearch,
    required this.onBilling,
    required this.onFeedback,
  });
  final GlobalKey searchKey;
  final Widget workspace, working;
  final WorkspaceController controller;
  final VoidCallback onSearch, onBilling, onFeedback;

  @override
  Widget build(BuildContext context) => RaftWorkspaceTopBar(
    key: const ValueKey('workspace-top-bar'),
    searchKey: searchKey,
    workspace: workspace,
    onSearch: onSearch,
    trailing: [
      working,
      SystemNotificationBell(
        key: const Key('topbar-notifications'),
        controller: controller,
        mobile: false,
        topBar: true,
        onBilling: onBilling,
        onFeedback: onFeedback,
      ),
    ],
  );
}
