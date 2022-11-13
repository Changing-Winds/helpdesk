import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:helpdesk/models/ui/preferences.dart';

part 'home_bloc.freezed.dart';
part 'home_bloc.g.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<_HomeStarted>(_onStarted);
    on<_HomeNavigationBehaviorChanged>(_onNavigationBehaviorChanged);
    on<_HomeDrawerVisibilityChanged>(_onDrawerVisibilityChanged);
  }

  FutureOr<void> _onStarted(event, Emitter<HomeState> emit) {}

  FutureOr<void> _onNavigationBehaviorChanged(
      _HomeNavigationBehaviorChanged event, Emitter<HomeState> emit) {
    emit(state.copyWith(
      status: HomeStatus.ready,
      navigationBehavior: event.showAsManyPages
          ? NavigationBehavior.manyPages
          : NavigationBehavior.onePage,
      isDrawerVisible: state.isDrawerVisible,
    ));
  }

  FutureOr<void> _onDrawerVisibilityChanged(
      _HomeDrawerVisibilityChanged event, Emitter<HomeState> emit) {
    emit(state.copyWith(
      status: HomeStatus.ready,
      navigationBehavior: state.navigationBehavior,
      isDrawerVisible: event.shouldDrawerBeVisible,
    ));
  }
}
