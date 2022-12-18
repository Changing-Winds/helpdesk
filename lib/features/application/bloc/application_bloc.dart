import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:helpdesk/models/models.dart';
import 'package:helpdesk/utils/config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_bloc.freezed.dart';
part 'application_bloc.g.dart';
part 'application_event.dart';
part 'application_state.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  ApplicationBloc(this.config) : super(const ApplicationState()) {
    on<_ApplicationStarted>(_onStarted);
    on<_ApplicationDrawerVisibilityChanged>(_onDrawerVisibilityChanged);
    on<_ApplicationTabSelected>(_onTabSelected);
    on<_ApplicationGoHome>(_onGoHome);
  }

  final Config config;

  Future<FutureOr<void>> _onStarted(
      event, Emitter<ApplicationState> emit) async {
    emit(state.copyWith(
      status: ApplicationStatus.ready,
      selectedTab: state.selectedTab,
    ));
  }

  FutureOr<void> _onDrawerVisibilityChanged(
      _ApplicationDrawerVisibilityChanged event,
      Emitter<ApplicationState> emit) {
    emit(state.copyWith(
      status: ApplicationStatus.ready,
      selectedTab: state.selectedTab,
      isDrawerVisible: event.shouldDrawerBeVisible,
    ));
  }

  FutureOr<void> _onTabSelected(
      _ApplicationTabSelected event, Emitter<ApplicationState> emit) {
    emit(state.copyWith(
      status: ApplicationStatus.ready,
      selectedTab: event.tab,
      isDrawerVisible: state.isDrawerVisible,
    ));
  }

  FutureOr<void> _onGoHome(event, Emitter<ApplicationState> emit) {
    emit(state.copyWith(
      status: ApplicationStatus.ready,
      selectedTab: state.selectedTab,
      isDrawerVisible: state.isDrawerVisible,
      show404: false,
    ));
  }
}
