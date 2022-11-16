import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:localizations/localizations.dart';
import 'package:helpdesk/features/project/bloc/project_bloc.dart';

class EditProjectForm extends StatefulWidget {
  const EditProjectForm({super.key});

  @override
  State<EditProjectForm> createState() => _EditProjectFormState();
}

class _EditProjectFormState extends State<EditProjectForm> with SharedTheme {
  final _titleController = TextEditingController();
  final _abstractController = TextEditingController();

  @override
  void initState() {
    _titleController.text = context.read<ProjectBloc>().state.project!.title;
    _abstractController.text =
        context.read<ProjectBloc>().state.project!.abstract ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProjectBloc, ProjectState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        void cancel() {
          Navigator.of(context).pop();
          context
              .read<ProjectBloc>()
              .add(const ProjectEvent.editingCancelled());
        }

        void save() {
          Navigator.of(context).pop();
          context.read<ProjectBloc>().add(ProjectEvent.editingSaved(
                project: state.project!,
                title: _titleController.text,
                abstract: _abstractController.text,
              ));
        }

        return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              PlatformTextFormField(
                  controller: _titleController,
                  labelText: "Title",
                  onChanged: null),
              PlatformTextFormField(
                  controller: _abstractController,
                  labelText: "Abstract",
                  onChanged: null),
              ButtonBar(children: [
                SecondaryButton(
                  onPressed: cancel,
                  child: Text(AppLocalizations.of(context)!.cancelButton),
                ),
                PrimaryButton(
                  onPressed: save,
                  child: Text(AppLocalizations.of(context)!.saveButton),
                )
              ]),
            ]);
      },
    );
  }
}
