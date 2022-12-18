part of 'application_bloc.dart';

@freezed
class ApplicationEvent with _$ApplicationEvent {
  const factory ApplicationEvent.started() = _ApplicationStarted;
  const factory ApplicationEvent.drawerVisibilityChanged(
      bool shouldDrawerBeVisible) = _ApplicationDrawerVisibilityChanged;
  const factory ApplicationEvent.tabSelected(int tab) = _ApplicationTabSelected;
  const factory ApplicationEvent.goHome() = _ApplicationGoHome;
}
