import 'package:account/account.dart';
import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:helpdesk/features/library/bloc/library_bloc.dart';
import 'package:helpdesk/features/project/bloc/project_bloc.dart';
import 'package:helpdesk/features/project/views/edit_project_screen.dart';
import 'package:helpdesk/repositories/project/models/project.dart';
import 'package:helpdesk/features/project/widgets/project_content.dart';

class MacOSProjectView extends StatelessWidget {
  const MacOSProjectView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String authorID = context.read<AuthenticationBloc>().state.user!.uid;

    return BlocConsumer<LibraryBloc, LibraryState>(
      listener: (context, libraryState) {
        context.read<ProjectBloc>().add(ProjectEvent.fetched(
            project: libraryState.project, authorID: authorID));
      },
      builder: (context, libraryState) {
        return BlocConsumer<ProjectBloc, ProjectState>(
          listener: (context, state) {
            if (state.status == ProjectStatus.editing) {
              showMacosSheet(
                context: context,
                builder: (_) => const MacosSheet(child: EditProjectScreen()),
              );
            }
          },
          builder: (context, state) {
            Project project = state.project ?? Project.sample();

            return MacosScaffold(
              key: Key('Project${project.id}'),
              toolBar: ToolBar(
                title: Text(project.title),
                actions: [
                  ToolBarPullDownButton(
                    label: "Actions",
                    icon: CupertinoIcons.ellipsis_circle,
                    tooltipMessage: "Perform tasks with the selected items",
                    items: [
                      MacosPulldownMenuItem(
                        label: "Edit Project",
                        title: const Text("Edit Project"),
                        onTap: () => BlocProvider.of<ProjectBloc>(context)
                            .add(ProjectEvent.edited(state.project!)),
                      ),
                      MacosPulldownMenuItem(
                        label: "Delete Project",
                        title: const Text("Delete Project"),
                        onTap: () => BlocProvider.of<ProjectBloc>(context)
                            .add(ProjectEvent.deleted(state.project!)),
                      ),
                      const MacosPulldownMenuDivider(),
                      MacosPulldownMenuItem(
                        label: "New Folder",
                        title: const Text("New Folder"),
                        onTap: () => debugPrint("Creating new folder..."),
                      ),
                      MacosPulldownMenuItem(
                        label: "Open",
                        title: const Text("Open"),
                        onTap: () => debugPrint("Opening..."),
                      ),
                      MacosPulldownMenuItem(
                        label: "Open with...",
                        title: const Text('Open with...'),
                        onTap: () => debugPrint("Opening with..."),
                      ),
                      MacosPulldownMenuItem(
                        label: "Import from iPhone...",
                        title: const Text('Import from iPhone...'),
                        onTap: () => debugPrint("Importing..."),
                      ),
                      const MacosPulldownMenuDivider(),
                      MacosPulldownMenuItem(
                        label: "Remove",
                        enabled: false,
                        title: const Text('Remove'),
                        onTap: () => debugPrint("Deleting..."),
                      ),
                      MacosPulldownMenuItem(
                        label: "Move to Bin",
                        title: const Text('Move to Bin'),
                        onTap: () => debugPrint("Moving to Bin..."),
                      ),
                      const MacosPulldownMenuDivider(),
                      MacosPulldownMenuItem(
                        label: "Tags...",
                        title: const Text('Tags...'),
                        onTap: () => debugPrint("Tags..."),
                      ),
                    ],
                  ),
                  const ToolBarDivider(),
                  ToolBarIconButton(
                    label: 'Toggle Sidebar',
                    icon: const MacosIcon(CupertinoIcons.sidebar_left),
                    showLabel: false,
                    tooltipMessage: 'Toggle Sidebar',
                    onPressed: () {
                      MacosWindowScope.of(context).toggleSidebar();
                    },
                  )
                ],
              ),
              children: [
                ContentArea(
                  builder: ((context, scrollController) {
                    return Center(
                      child: project != null
                          ? ProjectContent(
                              key: Key('ProjectContent${project.id}'),
                              project: project,
                            )
                          : Container(),
                    );
                  }),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
