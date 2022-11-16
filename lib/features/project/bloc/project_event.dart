part of 'project_bloc.dart';

@freezed
class ProjectEvent with _$ProjectEvent {
  const factory ProjectEvent.fetched(
      {required Project? project, required String authorID}) = _ProjectFetched;
  const factory ProjectEvent.edited(Project project) = _ProjectEdited;
  const factory ProjectEvent.updated(Project project) = _ProjectUpdated;
  const factory ProjectEvent.deleted(Project project) = _ProjectDeleted;
  const factory ProjectEvent.editingCancelled() = _ProjectEditingCancelled;
  const factory ProjectEvent.editingSaved({
    required Project project,
    required String title,
    required String abstract,
  }) = _ProjectEditingSaved;
}
