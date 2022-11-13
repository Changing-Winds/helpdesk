part of 'application_bloc.dart';

@freezed
class ApplicationEvent with _$ApplicationEvent {
  const factory ApplicationEvent.started() = _ApplicationStarted;
  const factory ApplicationEvent.navigationBehaviorChanged(
      bool showAsManyPages) = _ApplicationNavigationBehaviorChanged;
  const factory ApplicationEvent.drawerVisibilityChanged(
      bool shouldDrawerBeVisible) = _ApplicationDrawerVisibilityChanged;
  const factory ApplicationEvent.apiSelected(ApiDoc doc) =
      _ApplicationApiSelected;
  const factory ApplicationEvent.goHome() = _ApplicationGoHome;
}
