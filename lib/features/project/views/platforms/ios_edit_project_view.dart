import 'package:design_system/design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:helpdesk/features/project/widgets/edit_project_form.dart';

class IosEditProjectView extends StatelessWidget with SharedTheme {
  const IosEditProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTheme(
      data: CupertinoThemeData(
        brightness: Theme.of(context).brightness,
      ),
      child: CupertinoPageScaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        navigationBar: const CupertinoNavigationBar(
          automaticallyImplyLeading: true,
          automaticallyImplyMiddle: true,
          backgroundColor: Colors.transparent,
          transitionBetweenRoutes: true,
          middle: Text(
            'Edit Project',
          ),
        ),
        child: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(kSmallPadding),
            child: EditProjectForm(),
          ),
        ),
      ),
    );
  }
}
