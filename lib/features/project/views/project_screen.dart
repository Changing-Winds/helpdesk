import 'package:design_system/design_system.dart';
import 'package:helpdesk/features/project/views/platforms/ios_project_view.dart';

import 'package:helpdesk/features/project/views/platforms/macos_project_view.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const PlatformWidgetSwitcher(
      android: IosProjectView(),
      ios: IosProjectView(),
      macOS: MacOSProjectView(),
    );
  }
}
