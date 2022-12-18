// ignore_for_file: invalid_annotation_target

part of 'application_bloc.dart';

enum ApplicationStatus {
  loading,
  failed,
  ready;

  bool get isLoading => this == ApplicationStatus.loading;
  bool get isFailed => this == ApplicationStatus.failed;
  bool get isReady => this == ApplicationStatus.ready;
}

@freezed
class ApplicationState with _$ApplicationState {
  const factory ApplicationState({
    @Default(ApplicationStatus.loading) ApplicationStatus status,
    @JsonKey(ignore: true) @Default(true) bool isDrawerVisible,
    @JsonKey(ignore: true) @Default(0) selectedTab,
    @JsonKey(ignore: true) @Default(false) bool show404,
    @JsonKey(ignore: true) Failure? failure,
  }) = _ApplicationState;

  factory ApplicationState.fromJson(Map<String, dynamic> json) =>
      _$ApplicationStateFromJson(json);
}
