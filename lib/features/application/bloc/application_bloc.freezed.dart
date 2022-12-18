// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApplicationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool shouldDrawerBeVisible)
        drawerVisibilityChanged,
    required TResult Function(int tab) tabSelected,
    required TResult Function() goHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool shouldDrawerBeVisible)? drawerVisibilityChanged,
    TResult? Function(int tab)? tabSelected,
    TResult? Function()? goHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool shouldDrawerBeVisible)? drawerVisibilityChanged,
    TResult Function(int tab)? tabSelected,
    TResult Function()? goHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationStarted value) started,
    required TResult Function(_ApplicationDrawerVisibilityChanged value)
        drawerVisibilityChanged,
    required TResult Function(_ApplicationTabSelected value) tabSelected,
    required TResult Function(_ApplicationGoHome value) goHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationStarted value)? started,
    TResult? Function(_ApplicationDrawerVisibilityChanged value)?
        drawerVisibilityChanged,
    TResult? Function(_ApplicationTabSelected value)? tabSelected,
    TResult? Function(_ApplicationGoHome value)? goHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationStarted value)? started,
    TResult Function(_ApplicationDrawerVisibilityChanged value)?
        drawerVisibilityChanged,
    TResult Function(_ApplicationTabSelected value)? tabSelected,
    TResult Function(_ApplicationGoHome value)? goHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationEventCopyWith<$Res> {
  factory $ApplicationEventCopyWith(
          ApplicationEvent value, $Res Function(ApplicationEvent) then) =
      _$ApplicationEventCopyWithImpl<$Res, ApplicationEvent>;
}

/// @nodoc
class _$ApplicationEventCopyWithImpl<$Res, $Val extends ApplicationEvent>
    implements $ApplicationEventCopyWith<$Res> {
  _$ApplicationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ApplicationStartedCopyWith<$Res> {
  factory _$$_ApplicationStartedCopyWith(_$_ApplicationStarted value,
          $Res Function(_$_ApplicationStarted) then) =
      __$$_ApplicationStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ApplicationStartedCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$_ApplicationStarted>
    implements _$$_ApplicationStartedCopyWith<$Res> {
  __$$_ApplicationStartedCopyWithImpl(
      _$_ApplicationStarted _value, $Res Function(_$_ApplicationStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ApplicationStarted implements _ApplicationStarted {
  const _$_ApplicationStarted();

  @override
  String toString() {
    return 'ApplicationEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ApplicationStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool shouldDrawerBeVisible)
        drawerVisibilityChanged,
    required TResult Function(int tab) tabSelected,
    required TResult Function() goHome,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool shouldDrawerBeVisible)? drawerVisibilityChanged,
    TResult? Function(int tab)? tabSelected,
    TResult? Function()? goHome,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool shouldDrawerBeVisible)? drawerVisibilityChanged,
    TResult Function(int tab)? tabSelected,
    TResult Function()? goHome,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationStarted value) started,
    required TResult Function(_ApplicationDrawerVisibilityChanged value)
        drawerVisibilityChanged,
    required TResult Function(_ApplicationTabSelected value) tabSelected,
    required TResult Function(_ApplicationGoHome value) goHome,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationStarted value)? started,
    TResult? Function(_ApplicationDrawerVisibilityChanged value)?
        drawerVisibilityChanged,
    TResult? Function(_ApplicationTabSelected value)? tabSelected,
    TResult? Function(_ApplicationGoHome value)? goHome,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationStarted value)? started,
    TResult Function(_ApplicationDrawerVisibilityChanged value)?
        drawerVisibilityChanged,
    TResult Function(_ApplicationTabSelected value)? tabSelected,
    TResult Function(_ApplicationGoHome value)? goHome,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _ApplicationStarted implements ApplicationEvent {
  const factory _ApplicationStarted() = _$_ApplicationStarted;
}

/// @nodoc
abstract class _$$_ApplicationDrawerVisibilityChangedCopyWith<$Res> {
  factory _$$_ApplicationDrawerVisibilityChangedCopyWith(
          _$_ApplicationDrawerVisibilityChanged value,
          $Res Function(_$_ApplicationDrawerVisibilityChanged) then) =
      __$$_ApplicationDrawerVisibilityChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool shouldDrawerBeVisible});
}

/// @nodoc
class __$$_ApplicationDrawerVisibilityChangedCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res,
        _$_ApplicationDrawerVisibilityChanged>
    implements _$$_ApplicationDrawerVisibilityChangedCopyWith<$Res> {
  __$$_ApplicationDrawerVisibilityChangedCopyWithImpl(
      _$_ApplicationDrawerVisibilityChanged _value,
      $Res Function(_$_ApplicationDrawerVisibilityChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shouldDrawerBeVisible = null,
  }) {
    return _then(_$_ApplicationDrawerVisibilityChanged(
      null == shouldDrawerBeVisible
          ? _value.shouldDrawerBeVisible
          : shouldDrawerBeVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ApplicationDrawerVisibilityChanged
    implements _ApplicationDrawerVisibilityChanged {
  const _$_ApplicationDrawerVisibilityChanged(this.shouldDrawerBeVisible);

  @override
  final bool shouldDrawerBeVisible;

  @override
  String toString() {
    return 'ApplicationEvent.drawerVisibilityChanged(shouldDrawerBeVisible: $shouldDrawerBeVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicationDrawerVisibilityChanged &&
            (identical(other.shouldDrawerBeVisible, shouldDrawerBeVisible) ||
                other.shouldDrawerBeVisible == shouldDrawerBeVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shouldDrawerBeVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplicationDrawerVisibilityChangedCopyWith<
          _$_ApplicationDrawerVisibilityChanged>
      get copyWith => __$$_ApplicationDrawerVisibilityChangedCopyWithImpl<
          _$_ApplicationDrawerVisibilityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool shouldDrawerBeVisible)
        drawerVisibilityChanged,
    required TResult Function(int tab) tabSelected,
    required TResult Function() goHome,
  }) {
    return drawerVisibilityChanged(shouldDrawerBeVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool shouldDrawerBeVisible)? drawerVisibilityChanged,
    TResult? Function(int tab)? tabSelected,
    TResult? Function()? goHome,
  }) {
    return drawerVisibilityChanged?.call(shouldDrawerBeVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool shouldDrawerBeVisible)? drawerVisibilityChanged,
    TResult Function(int tab)? tabSelected,
    TResult Function()? goHome,
    required TResult orElse(),
  }) {
    if (drawerVisibilityChanged != null) {
      return drawerVisibilityChanged(shouldDrawerBeVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationStarted value) started,
    required TResult Function(_ApplicationDrawerVisibilityChanged value)
        drawerVisibilityChanged,
    required TResult Function(_ApplicationTabSelected value) tabSelected,
    required TResult Function(_ApplicationGoHome value) goHome,
  }) {
    return drawerVisibilityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationStarted value)? started,
    TResult? Function(_ApplicationDrawerVisibilityChanged value)?
        drawerVisibilityChanged,
    TResult? Function(_ApplicationTabSelected value)? tabSelected,
    TResult? Function(_ApplicationGoHome value)? goHome,
  }) {
    return drawerVisibilityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationStarted value)? started,
    TResult Function(_ApplicationDrawerVisibilityChanged value)?
        drawerVisibilityChanged,
    TResult Function(_ApplicationTabSelected value)? tabSelected,
    TResult Function(_ApplicationGoHome value)? goHome,
    required TResult orElse(),
  }) {
    if (drawerVisibilityChanged != null) {
      return drawerVisibilityChanged(this);
    }
    return orElse();
  }
}

abstract class _ApplicationDrawerVisibilityChanged implements ApplicationEvent {
  const factory _ApplicationDrawerVisibilityChanged(
      final bool shouldDrawerBeVisible) = _$_ApplicationDrawerVisibilityChanged;

  bool get shouldDrawerBeVisible;
  @JsonKey(ignore: true)
  _$$_ApplicationDrawerVisibilityChangedCopyWith<
          _$_ApplicationDrawerVisibilityChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ApplicationTabSelectedCopyWith<$Res> {
  factory _$$_ApplicationTabSelectedCopyWith(_$_ApplicationTabSelected value,
          $Res Function(_$_ApplicationTabSelected) then) =
      __$$_ApplicationTabSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({int tab});
}

/// @nodoc
class __$$_ApplicationTabSelectedCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$_ApplicationTabSelected>
    implements _$$_ApplicationTabSelectedCopyWith<$Res> {
  __$$_ApplicationTabSelectedCopyWithImpl(_$_ApplicationTabSelected _value,
      $Res Function(_$_ApplicationTabSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
  }) {
    return _then(_$_ApplicationTabSelected(
      null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ApplicationTabSelected implements _ApplicationTabSelected {
  const _$_ApplicationTabSelected(this.tab);

  @override
  final int tab;

  @override
  String toString() {
    return 'ApplicationEvent.tabSelected(tab: $tab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicationTabSelected &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplicationTabSelectedCopyWith<_$_ApplicationTabSelected> get copyWith =>
      __$$_ApplicationTabSelectedCopyWithImpl<_$_ApplicationTabSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool shouldDrawerBeVisible)
        drawerVisibilityChanged,
    required TResult Function(int tab) tabSelected,
    required TResult Function() goHome,
  }) {
    return tabSelected(tab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool shouldDrawerBeVisible)? drawerVisibilityChanged,
    TResult? Function(int tab)? tabSelected,
    TResult? Function()? goHome,
  }) {
    return tabSelected?.call(tab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool shouldDrawerBeVisible)? drawerVisibilityChanged,
    TResult Function(int tab)? tabSelected,
    TResult Function()? goHome,
    required TResult orElse(),
  }) {
    if (tabSelected != null) {
      return tabSelected(tab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationStarted value) started,
    required TResult Function(_ApplicationDrawerVisibilityChanged value)
        drawerVisibilityChanged,
    required TResult Function(_ApplicationTabSelected value) tabSelected,
    required TResult Function(_ApplicationGoHome value) goHome,
  }) {
    return tabSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationStarted value)? started,
    TResult? Function(_ApplicationDrawerVisibilityChanged value)?
        drawerVisibilityChanged,
    TResult? Function(_ApplicationTabSelected value)? tabSelected,
    TResult? Function(_ApplicationGoHome value)? goHome,
  }) {
    return tabSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationStarted value)? started,
    TResult Function(_ApplicationDrawerVisibilityChanged value)?
        drawerVisibilityChanged,
    TResult Function(_ApplicationTabSelected value)? tabSelected,
    TResult Function(_ApplicationGoHome value)? goHome,
    required TResult orElse(),
  }) {
    if (tabSelected != null) {
      return tabSelected(this);
    }
    return orElse();
  }
}

abstract class _ApplicationTabSelected implements ApplicationEvent {
  const factory _ApplicationTabSelected(final int tab) =
      _$_ApplicationTabSelected;

  int get tab;
  @JsonKey(ignore: true)
  _$$_ApplicationTabSelectedCopyWith<_$_ApplicationTabSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ApplicationGoHomeCopyWith<$Res> {
  factory _$$_ApplicationGoHomeCopyWith(_$_ApplicationGoHome value,
          $Res Function(_$_ApplicationGoHome) then) =
      __$$_ApplicationGoHomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ApplicationGoHomeCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$_ApplicationGoHome>
    implements _$$_ApplicationGoHomeCopyWith<$Res> {
  __$$_ApplicationGoHomeCopyWithImpl(
      _$_ApplicationGoHome _value, $Res Function(_$_ApplicationGoHome) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ApplicationGoHome implements _ApplicationGoHome {
  const _$_ApplicationGoHome();

  @override
  String toString() {
    return 'ApplicationEvent.goHome()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ApplicationGoHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool shouldDrawerBeVisible)
        drawerVisibilityChanged,
    required TResult Function(int tab) tabSelected,
    required TResult Function() goHome,
  }) {
    return goHome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool shouldDrawerBeVisible)? drawerVisibilityChanged,
    TResult? Function(int tab)? tabSelected,
    TResult? Function()? goHome,
  }) {
    return goHome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool shouldDrawerBeVisible)? drawerVisibilityChanged,
    TResult Function(int tab)? tabSelected,
    TResult Function()? goHome,
    required TResult orElse(),
  }) {
    if (goHome != null) {
      return goHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationStarted value) started,
    required TResult Function(_ApplicationDrawerVisibilityChanged value)
        drawerVisibilityChanged,
    required TResult Function(_ApplicationTabSelected value) tabSelected,
    required TResult Function(_ApplicationGoHome value) goHome,
  }) {
    return goHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationStarted value)? started,
    TResult? Function(_ApplicationDrawerVisibilityChanged value)?
        drawerVisibilityChanged,
    TResult? Function(_ApplicationTabSelected value)? tabSelected,
    TResult? Function(_ApplicationGoHome value)? goHome,
  }) {
    return goHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationStarted value)? started,
    TResult Function(_ApplicationDrawerVisibilityChanged value)?
        drawerVisibilityChanged,
    TResult Function(_ApplicationTabSelected value)? tabSelected,
    TResult Function(_ApplicationGoHome value)? goHome,
    required TResult orElse(),
  }) {
    if (goHome != null) {
      return goHome(this);
    }
    return orElse();
  }
}

abstract class _ApplicationGoHome implements ApplicationEvent {
  const factory _ApplicationGoHome() = _$_ApplicationGoHome;
}

ApplicationState _$ApplicationStateFromJson(Map<String, dynamic> json) {
  return _ApplicationState.fromJson(json);
}

/// @nodoc
mixin _$ApplicationState {
  ApplicationStatus get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  bool get isDrawerVisible => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  dynamic get selectedTab => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  bool get show404 => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  Failure? get failure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicationStateCopyWith<ApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationStateCopyWith<$Res> {
  factory $ApplicationStateCopyWith(
          ApplicationState value, $Res Function(ApplicationState) then) =
      _$ApplicationStateCopyWithImpl<$Res, ApplicationState>;
  @useResult
  $Res call(
      {ApplicationStatus status,
      @JsonKey(ignore: true) bool isDrawerVisible,
      @JsonKey(ignore: true) dynamic selectedTab,
      @JsonKey(ignore: true) bool show404,
      @JsonKey(ignore: true) Failure? failure});
}

/// @nodoc
class _$ApplicationStateCopyWithImpl<$Res, $Val extends ApplicationState>
    implements $ApplicationStateCopyWith<$Res> {
  _$ApplicationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isDrawerVisible = null,
    Object? selectedTab = freezed,
    Object? show404 = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApplicationStatus,
      isDrawerVisible: null == isDrawerVisible
          ? _value.isDrawerVisible
          : isDrawerVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedTab: freezed == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as dynamic,
      show404: null == show404
          ? _value.show404
          : show404 // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApplicationStateCopyWith<$Res>
    implements $ApplicationStateCopyWith<$Res> {
  factory _$$_ApplicationStateCopyWith(
          _$_ApplicationState value, $Res Function(_$_ApplicationState) then) =
      __$$_ApplicationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApplicationStatus status,
      @JsonKey(ignore: true) bool isDrawerVisible,
      @JsonKey(ignore: true) dynamic selectedTab,
      @JsonKey(ignore: true) bool show404,
      @JsonKey(ignore: true) Failure? failure});
}

/// @nodoc
class __$$_ApplicationStateCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res, _$_ApplicationState>
    implements _$$_ApplicationStateCopyWith<$Res> {
  __$$_ApplicationStateCopyWithImpl(
      _$_ApplicationState _value, $Res Function(_$_ApplicationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isDrawerVisible = null,
    Object? selectedTab = freezed,
    Object? show404 = null,
    Object? failure = freezed,
  }) {
    return _then(_$_ApplicationState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApplicationStatus,
      isDrawerVisible: null == isDrawerVisible
          ? _value.isDrawerVisible
          : isDrawerVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedTab: freezed == selectedTab ? _value.selectedTab! : selectedTab,
      show404: null == show404
          ? _value.show404
          : show404 // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApplicationState implements _ApplicationState {
  const _$_ApplicationState(
      {this.status = ApplicationStatus.loading,
      @JsonKey(ignore: true) this.isDrawerVisible = true,
      @JsonKey(ignore: true) this.selectedTab = 0,
      @JsonKey(ignore: true) this.show404 = false,
      @JsonKey(ignore: true) this.failure});

  factory _$_ApplicationState.fromJson(Map<String, dynamic> json) =>
      _$$_ApplicationStateFromJson(json);

  @override
  @JsonKey()
  final ApplicationStatus status;
  @override
  @JsonKey(ignore: true)
  final bool isDrawerVisible;
  @override
  @JsonKey(ignore: true)
  final dynamic selectedTab;
  @override
  @JsonKey(ignore: true)
  final bool show404;
  @override
  @JsonKey(ignore: true)
  final Failure? failure;

  @override
  String toString() {
    return 'ApplicationState(status: $status, isDrawerVisible: $isDrawerVisible, selectedTab: $selectedTab, show404: $show404, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicationState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDrawerVisible, isDrawerVisible) ||
                other.isDrawerVisible == isDrawerVisible) &&
            const DeepCollectionEquality()
                .equals(other.selectedTab, selectedTab) &&
            (identical(other.show404, show404) || other.show404 == show404) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, isDrawerVisible,
      const DeepCollectionEquality().hash(selectedTab), show404, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplicationStateCopyWith<_$_ApplicationState> get copyWith =>
      __$$_ApplicationStateCopyWithImpl<_$_ApplicationState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApplicationStateToJson(
      this,
    );
  }
}

abstract class _ApplicationState implements ApplicationState {
  const factory _ApplicationState(
      {final ApplicationStatus status,
      @JsonKey(ignore: true) final bool isDrawerVisible,
      @JsonKey(ignore: true) final dynamic selectedTab,
      @JsonKey(ignore: true) final bool show404,
      @JsonKey(ignore: true) final Failure? failure}) = _$_ApplicationState;

  factory _ApplicationState.fromJson(Map<String, dynamic> json) =
      _$_ApplicationState.fromJson;

  @override
  ApplicationStatus get status;
  @override
  @JsonKey(ignore: true)
  bool get isDrawerVisible;
  @override
  @JsonKey(ignore: true)
  dynamic get selectedTab;
  @override
  @JsonKey(ignore: true)
  bool get show404;
  @override
  @JsonKey(ignore: true)
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_ApplicationStateCopyWith<_$_ApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}
