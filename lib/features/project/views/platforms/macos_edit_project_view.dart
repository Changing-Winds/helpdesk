import 'package:design_system/design_system.dart';
import 'package:helpdesk/features/project/widgets/edit_project_form.dart';

class MacOSEditProjectView extends StatelessWidget with SharedTheme {
  const MacOSEditProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: MediaQuery.of(context).platformBrightness == Brightness.dark
          ? darkTheme()
          : lightTheme(),
      child: Padding(
        padding: const EdgeInsets.all(kSmallPadding),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: kSmallPadding),
                child: Text(
                  'Edit Project',
                  style: textTheme(context).titleMedium,
                ),
              ),
              const Divider(),
              const EditProjectForm(),
            ]),
      ),
    );
  }
}
