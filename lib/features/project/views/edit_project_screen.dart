import 'package:design_system/design_system.dart';
import 'package:helpdesk/features/project/views/platforms/ios_edit_project_view.dart';
import 'package:helpdesk/features/project/views/platforms/macos_edit_project_view.dart';

class EditProjectScreen extends StatelessWidget {
  const EditProjectScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const PlatformWidgetSwitcher(
      android: IosEditProjectView(),
      ios: IosEditProjectView(),
      macOS: MacOSEditProjectView(),
    );
  }
}
