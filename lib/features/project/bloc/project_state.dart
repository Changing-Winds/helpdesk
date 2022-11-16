part of 'project_bloc.dart';

enum ProjectStatus {
  initial,
  loading,
  editing,
  updated,
  ready,
  failure;

  bool get isInitial => this == ProjectStatus.initial;
  bool get isLoading => this == ProjectStatus.loading;
  bool get isEditing => this == ProjectStatus.editing;
  bool get isUpdated => this == ProjectStatus.updated;
  bool get isReady => this == ProjectStatus.ready;
  bool get isFailure => this == ProjectStatus.failure;
}

@freezed
class ProjectState with _$ProjectState {
  const factory ProjectState({
    @Default(ProjectStatus.initial) ProjectStatus status,
    Project? project,
  }) = _ProjectState;

  factory ProjectState.fromJson(Map<String, dynamic> json) =>
      _$ProjectStateFromJson(json);
}
