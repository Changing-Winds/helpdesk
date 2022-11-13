// ignore_for_file: invalid_annotation_target

part of 'home_bloc.dart';

enum HomeStatus {
  loading,
  ready;

  bool get isLoading => this == HomeStatus.loading;
  bool get isReady => this == HomeStatus.ready;
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStatus.ready) HomeStatus status,
    @JsonKey(ignore: true)
    @Default(NavigationBehavior.onePage)
        NavigationBehavior navigationBehavior,
    @JsonKey(ignore: true) @Default(true) bool isDrawerVisible,
  }) = _HomeState;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);
}
