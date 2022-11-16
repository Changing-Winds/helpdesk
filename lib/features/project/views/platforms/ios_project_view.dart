import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:helpdesk/features/library/bloc/library_bloc.dart';
import 'package:helpdesk/features/project/bloc/project_bloc.dart';
import 'package:helpdesk/features/project/views/edit_project_screen.dart';
import 'package:helpdesk/features/project/widgets/project_content.dart';
import 'package:helpdesk/repositories/project/models/project.dart';

class IosProjectView extends StatelessWidget {
  const IosProjectView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LibraryBloc, LibraryState>(
      builder: (context, state) {
        Project project = state.project ?? Project.sample();

        void _editProject() {
          BlocProvider.of<ProjectBloc>(context)
              .add(ProjectEvent.edited(state.project!));
          Navigator.of(context).push(CupertinoPageRoute<void>(
            title: 'EditProject',
            builder: (context) => const EditProjectScreen(),
          ));
        }

        return CupertinoTheme(
          data: CupertinoThemeData(
            brightness: Theme.of(context).brightness,
          ),
          child: CupertinoPageScaffold(
            backgroundColor: Theme.of(context).colorScheme.surface,
            child: CustomScrollView(
              slivers: [
                CupertinoSliverNavigationBar(
                  automaticallyImplyLeading: true,
                  backgroundColor: Colors.transparent,
                  largeTitle: Text(project.title),
                  trailing: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(
                          CupertinoIcons.add,
                          color: Theme.of(context).colorScheme.onSurface,
                          size: 28.0,
                        ),
                        onPressed: _editProject,
                      ),
                      IconButton(
                        icon: Icon(
                          CupertinoIcons.ellipsis_circle,
                          color: Theme.of(context).colorScheme.onSurface,
                          size: 28.0,
                        ),
                        onPressed: _editProject,
                      ),
                    ],
                  ),
                  transitionBetweenRoutes: true,
                ),
                SliverToBoxAdapter(
                  child: ProjectContent(
                    project: project,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
