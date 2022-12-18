// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool showAsManyPages) navigationBehaviorChanged,
    required TResult Function(bool shouldDrawerBeVisible)
        drawerVisibilityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool showAsManyPages)? navigationBehaviorChanged,
    TResult? Function(bool shouldDrawerBeVisible)? drawerVisibilityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool showAsManyPages)? navigationBehaviorChanged,
    TResult Function(bool shouldDrawerBeVisible)? drawerVisibilityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStarted value) started,
    required TResult Function(_HomeNavigationBehaviorChanged value)
        navigationBehaviorChanged,
    required TResult Function(_HomeDrawerVisibilityChanged value)
        drawerVisibilityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeStarted value)? started,
    TResult? Function(_HomeNavigationBehaviorChanged value)?
        navigationBehaviorChanged,
    TResult? Function(_HomeDrawerVisibilityChanged value)?
        drawerVisibilityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStarted value)? started,
    TResult Function(_HomeNavigationBehaviorChanged value)?
        navigationBehaviorChanged,
    TResult Function(_HomeDrawerVisibilityChanged value)?
        drawerVisibilityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HomeStartedCopyWith<$Res> {
  factory _$$_HomeStartedCopyWith(
          _$_HomeStarted value, $Res Function(_$_HomeStarted) then) =
      __$$_HomeStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeStartedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_HomeStarted>
    implements _$$_HomeStartedCopyWith<$Res> {
  __$$_HomeStartedCopyWithImpl(
      _$_HomeStarted _value, $Res Function(_$_HomeStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeStarted implements _HomeStarted {
  const _$_HomeStarted();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool showAsManyPages) navigationBehaviorChanged,
    required TResult Function(bool shouldDrawerBeVisible)
        drawerVisibilityChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool showAsManyPages)? navigationBehaviorChanged,
    TResult? Function(bool shouldDrawerBeVisible)? drawerVisibilityChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool showAsManyPages)? navigationBehaviorChanged,
    TResult Function(bool shouldDrawerBeVisible)? drawerVisibilityChanged,
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
    required TResult Function(_HomeStarted value) started,
    required TResult Function(_HomeNavigationBehaviorChanged value)
        navigationBehaviorChanged,
    required TResult Function(_HomeDrawerVisibilityChanged value)
        drawerVisibilityChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeStarted value)? started,
    TResult? Function(_HomeNavigationBehaviorChanged value)?
        navigationBehaviorChanged,
    TResult? Function(_HomeDrawerVisibilityChanged value)?
        drawerVisibilityChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStarted value)? started,
    TResult Function(_HomeNavigationBehaviorChanged value)?
        navigationBehaviorChanged,
    TResult Function(_HomeDrawerVisibilityChanged value)?
        drawerVisibilityChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _HomeStarted implements HomeEvent {
  const factory _HomeStarted() = _$_HomeStarted;
}

/// @nodoc
abstract class _$$_HomeNavigationBehaviorChangedCopyWith<$Res> {
  factory _$$_HomeNavigationBehaviorChangedCopyWith(
          _$_HomeNavigationBehaviorChanged value,
          $Res Function(_$_HomeNavigationBehaviorChanged) then) =
      __$$_HomeNavigationBehaviorChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool showAsManyPages});
}

/// @nodoc
class __$$_HomeNavigationBehaviorChangedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_HomeNavigationBehaviorChanged>
    implements _$$_HomeNavigationBehaviorChangedCopyWith<$Res> {
  __$$_HomeNavigationBehaviorChangedCopyWithImpl(
      _$_HomeNavigationBehaviorChanged _value,
      $Res Function(_$_HomeNavigationBehaviorChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showAsManyPages = null,
  }) {
    return _then(_$_HomeNavigationBehaviorChanged(
      null == showAsManyPages
          ? _value.showAsManyPages
          : showAsManyPages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeNavigationBehaviorChanged
    implements _HomeNavigationBehaviorChanged {
  const _$_HomeNavigationBehaviorChanged(this.showAsManyPages);

  @override
  final bool showAsManyPages;

  @override
  String toString() {
    return 'HomeEvent.navigationBehaviorChanged(showAsManyPages: $showAsManyPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeNavigationBehaviorChanged &&
            (identical(other.showAsManyPages, showAsManyPages) ||
                other.showAsManyPages == showAsManyPages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showAsManyPages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeNavigationBehaviorChangedCopyWith<_$_HomeNavigationBehaviorChanged>
      get copyWith => __$$_HomeNavigationBehaviorChangedCopyWithImpl<
          _$_HomeNavigationBehaviorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool showAsManyPages) navigationBehaviorChanged,
    required TResult Function(bool shouldDrawerBeVisible)
        drawerVisibilityChanged,
  }) {
    return navigationBehaviorChanged(showAsManyPages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool showAsManyPages)? navigationBehaviorChanged,
    TResult? Function(bool shouldDrawerBeVisible)? drawerVisibilityChanged,
  }) {
    return navigationBehaviorChanged?.call(showAsManyPages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool showAsManyPages)? navigationBehaviorChanged,
    TResult Function(bool shouldDrawerBeVisible)? drawerVisibilityChanged,
    required TResult orElse(),
  }) {
    if (navigationBehaviorChanged != null) {
      return navigationBehaviorChanged(showAsManyPages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStarted value) started,
    required TResult Function(_HomeNavigationBehaviorChanged value)
        navigationBehaviorChanged,
    required TResult Function(_HomeDrawerVisibilityChanged value)
        drawerVisibilityChanged,
  }) {
    return navigationBehaviorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeStarted value)? started,
    TResult? Function(_HomeNavigationBehaviorChanged value)?
        navigationBehaviorChanged,
    TResult? Function(_HomeDrawerVisibilityChanged value)?
        drawerVisibilityChanged,
  }) {
    return navigationBehaviorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStarted value)? started,
    TResult Function(_HomeNavigationBehaviorChanged value)?
        navigationBehaviorChanged,
    TResult Function(_HomeDrawerVisibilityChanged value)?
        drawerVisibilityChanged,
    required TResult orElse(),
  }) {
    if (navigationBehaviorChanged != null) {
      return navigationBehaviorChanged(this);
    }
    return orElse();
  }
}

abstract class _HomeNavigationBehaviorChanged implements HomeEvent {
  const factory _HomeNavigationBehaviorChanged(final bool showAsManyPages) =
      _$_HomeNavigationBehaviorChanged;

  bool get showAsManyPages;
  @JsonKey(ignore: true)
  _$$_HomeNavigationBehaviorChangedCopyWith<_$_HomeNavigationBehaviorChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomeDrawerVisibilityChangedCopyWith<$Res> {
  factory _$$_HomeDrawerVisibilityChangedCopyWith(
          _$_HomeDrawerVisibilityChanged value,
          $Res Function(_$_HomeDrawerVisibilityChanged) then) =
      __$$_HomeDrawerVisibilityChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool shouldDrawerBeVisible});
}

/// @nodoc
class __$$_HomeDrawerVisibilityChangedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_HomeDrawerVisibilityChanged>
    implements _$$_HomeDrawerVisibilityChangedCopyWith<$Res> {
  __$$_HomeDrawerVisibilityChangedCopyWithImpl(
      _$_HomeDrawerVisibilityChanged _value,
      $Res Function(_$_HomeDrawerVisibilityChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shouldDrawerBeVisible = null,
  }) {
    return _then(_$_HomeDrawerVisibilityChanged(
      null == shouldDrawerBeVisible
          ? _value.shouldDrawerBeVisible
          : shouldDrawerBeVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeDrawerVisibilityChanged implements _HomeDrawerVisibilityChanged {
  const _$_HomeDrawerVisibilityChanged(this.shouldDrawerBeVisible);

  @override
  final bool shouldDrawerBeVisible;

  @override
  String toString() {
    return 'HomeEvent.drawerVisibilityChanged(shouldDrawerBeVisible: $shouldDrawerBeVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeDrawerVisibilityChanged &&
            (identical(other.shouldDrawerBeVisible, shouldDrawerBeVisible) ||
                other.shouldDrawerBeVisible == shouldDrawerBeVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shouldDrawerBeVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeDrawerVisibilityChangedCopyWith<_$_HomeDrawerVisibilityChanged>
      get copyWith => __$$_HomeDrawerVisibilityChangedCopyWithImpl<
          _$_HomeDrawerVisibilityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool showAsManyPages) navigationBehaviorChanged,
    required TResult Function(bool shouldDrawerBeVisible)
        drawerVisibilityChanged,
  }) {
    return drawerVisibilityChanged(shouldDrawerBeVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool showAsManyPages)? navigationBehaviorChanged,
    TResult? Function(bool shouldDrawerBeVisible)? drawerVisibilityChanged,
  }) {
    return drawerVisibilityChanged?.call(shouldDrawerBeVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool showAsManyPages)? navigationBehaviorChanged,
    TResult Function(bool shouldDrawerBeVisible)? drawerVisibilityChanged,
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
    required TResult Function(_HomeStarted value) started,
    required TResult Function(_HomeNavigationBehaviorChanged value)
        navigationBehaviorChanged,
    required TResult Function(_HomeDrawerVisibilityChanged value)
        drawerVisibilityChanged,
  }) {
    return drawerVisibilityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeStarted value)? started,
    TResult? Function(_HomeNavigationBehaviorChanged value)?
        navigationBehaviorChanged,
    TResult? Function(_HomeDrawerVisibilityChanged value)?
        drawerVisibilityChanged,
  }) {
    return drawerVisibilityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStarted value)? started,
    TResult Function(_HomeNavigationBehaviorChanged value)?
        navigationBehaviorChanged,
    TResult Function(_HomeDrawerVisibilityChanged value)?
        drawerVisibilityChanged,
    required TResult orElse(),
  }) {
    if (drawerVisibilityChanged != null) {
      return drawerVisibilityChanged(this);
    }
    return orElse();
  }
}

abstract class _HomeDrawerVisibilityChanged implements HomeEvent {
  const factory _HomeDrawerVisibilityChanged(final bool shouldDrawerBeVisible) =
      _$_HomeDrawerVisibilityChanged;

  bool get shouldDrawerBeVisible;
  @JsonKey(ignore: true)
  _$$_HomeDrawerVisibilityChangedCopyWith<_$_HomeDrawerVisibilityChanged>
      get copyWith => throw _privateConstructorUsedError;
}

HomeState _$HomeStateFromJson(Map<String, dynamic> json) {
  return _HomeState.fromJson(json);
}

/// @nodoc
mixin _$HomeState {
  HomeStatus get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  NavigationBehavior get navigationBehavior =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  bool get isDrawerVisible => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {HomeStatus status,
      @JsonKey(ignore: true) NavigationBehavior navigationBehavior,
      @JsonKey(ignore: true) bool isDrawerVisible});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? navigationBehavior = freezed,
    Object? isDrawerVisible = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      navigationBehavior: freezed == navigationBehavior
          ? _value.navigationBehavior
          : navigationBehavior // ignore: cast_nullable_to_non_nullable
              as NavigationBehavior,
      isDrawerVisible: null == isDrawerVisible
          ? _value.isDrawerVisible
          : isDrawerVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HomeStatus status,
      @JsonKey(ignore: true) NavigationBehavior navigationBehavior,
      @JsonKey(ignore: true) bool isDrawerVisible});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? navigationBehavior = freezed,
    Object? isDrawerVisible = null,
  }) {
    return _then(_$_HomeState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      navigationBehavior: freezed == navigationBehavior
          ? _value.navigationBehavior
          : navigationBehavior // ignore: cast_nullable_to_non_nullable
              as NavigationBehavior,
      isDrawerVisible: null == isDrawerVisible
          ? _value.isDrawerVisible
          : isDrawerVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {this.status = HomeStatus.ready,
      @JsonKey(ignore: true)
          this.navigationBehavior = NavigationBehavior.onePage,
      @JsonKey(ignore: true)
          this.isDrawerVisible = true});

  factory _$_HomeState.fromJson(Map<String, dynamic> json) =>
      _$$_HomeStateFromJson(json);

  @override
  @JsonKey()
  final HomeStatus status;
  @override
  @JsonKey(ignore: true)
  final NavigationBehavior navigationBehavior;
  @override
  @JsonKey(ignore: true)
  final bool isDrawerVisible;

  @override
  String toString() {
    return 'HomeState(status: $status, navigationBehavior: $navigationBehavior, isDrawerVisible: $isDrawerVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.navigationBehavior, navigationBehavior) &&
            (identical(other.isDrawerVisible, isDrawerVisible) ||
                other.isDrawerVisible == isDrawerVisible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(navigationBehavior), isDrawerVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeStateToJson(
      this,
    );
  }
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final HomeStatus status,
      @JsonKey(ignore: true) final NavigationBehavior navigationBehavior,
      @JsonKey(ignore: true) final bool isDrawerVisible}) = _$_HomeState;

  factory _HomeState.fromJson(Map<String, dynamic> json) =
      _$_HomeState.fromJson;

  @override
  HomeStatus get status;
  @override
  @JsonKey(ignore: true)
  NavigationBehavior get navigationBehavior;
  @override
  @JsonKey(ignore: true)
  bool get isDrawerVisible;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
