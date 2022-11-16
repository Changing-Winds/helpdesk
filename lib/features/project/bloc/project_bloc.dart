import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helpdesk/repositories/project/models/project.dart';
import 'package:helpdesk/repositories/project/project_repository.dart';

part 'project_event.dart';
part 'project_state.dart';

part 'project_bloc.freezed.dart';
part 'project_bloc.g.dart';

class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  ProjectBloc({
    required this.projectRepository,
  }) : super(const ProjectState()) {
    on<_ProjectFetched>(_onFetched);
    on<_ProjectEdited>(_onEdited);
    on<_ProjectUpdated>(_onUpdated);
    on<_ProjectEditingCancelled>(_onEditingCancelled);
    on<_ProjectEditingSaved>(_onEditingSaved);
    on<_ProjectDeleted>(_onDeleted);
  }

  final ProjectRepository projectRepository;
  Stream<Project>? projectStream;
  StreamSubscription? subscription;

  @override
  Future<void> close() {
    subscription?.cancel();
    projectRepository.cancelRealTimeListSubscription();
    super.close();
    return Future.value();
  }

  FutureOr<void> _onFetched(_ProjectFetched event, Emitter<ProjectState> emit) {
    subscription?.cancel();
    projectRepository.cancelRealTimeDocumentSubscription();
    if (event.project != null) {
      projectStream =
          projectRepository.realTimeDocumentSubscription(event.project!.id!);
      subscription = projectStream?.listen((project) {
        add(_ProjectUpdated(project));
      });
    }
  }

  FutureOr<void> _onUpdated(_ProjectUpdated event, Emitter<ProjectState> emit) {
    emit(state.copyWith(
      project: event.project,
    ));
  }

  FutureOr<void> _onEdited(_ProjectEdited event, Emitter<ProjectState> emit) {
    emit(state.copyWith(
      status: ProjectStatus.editing,
      project: event.project,
    ));
  }

  FutureOr<void> _onEditingCancelled(
      _ProjectEditingCancelled event, Emitter<ProjectState> emit) {
    emit(state.copyWith(
      status: ProjectStatus.ready,
      project: state.project,
    ));
  }

  FutureOr<void> _onEditingSaved(
      _ProjectEditingSaved event, Emitter<ProjectState> emit) {
    Project editedProject = event.project.copyWith(
      title: event.title,
      abstract: event.abstract,
    );
    projectRepository.insert(editedProject.id!, editedProject.toJson());
    emit(state.copyWith(
      status: ProjectStatus.updated,
      project: editedProject,
    ));
  }

  FutureOr<void> _onDeleted(_ProjectDeleted event, Emitter<ProjectState> emit) {
    projectRepository.delete(event.project.id!);
    emit(state.copyWith(
      status: ProjectStatus.updated,
      project: null,
    ));
  }
}
