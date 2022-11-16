import 'dart:io';

import 'package:design_system/design_system.dart';
import 'package:helpdesk/repositories/project/models/project.dart';

class ProjectContent extends StatelessWidget with SharedTheme {
  const ProjectContent({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          project.title,
          style: textTheme(context).titleLarge,
        ),
        Text(
          project.abstract ?? '',
          style: textTheme(context).bodyLarge,
        ),
      ],
    );
  }
}
