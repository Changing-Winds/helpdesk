part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _HomeStarted;
  const factory HomeEvent.navigationBehaviorChanged(bool showAsManyPages) =
      _HomeNavigationBehaviorChanged;
  const factory HomeEvent.drawerVisibilityChanged(bool shouldDrawerBeVisible) =
      _HomeDrawerVisibilityChanged;
}
