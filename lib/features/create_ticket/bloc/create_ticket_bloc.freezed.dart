// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_ticket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateTicketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() nextStepRequested,
    required TResult Function() featureStepSaved,
    required TResult Function(Product product) productChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? nextStepRequested,
    TResult? Function()? featureStepSaved,
    TResult? Function(Product product)? productChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? nextStepRequested,
    TResult Function()? featureStepSaved,
    TResult Function(Product product)? productChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTicketStarted value) started,
    required TResult Function(_CreateTicketNextStepRequested value)
        nextStepRequested,
    required TResult Function(_CreateTicketFeatureStepSaved value)
        featureStepSaved,
    required TResult Function(_CreateTicketProductChanged value) productChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTicketStarted value)? started,
    TResult? Function(_CreateTicketNextStepRequested value)? nextStepRequested,
    TResult? Function(_CreateTicketFeatureStepSaved value)? featureStepSaved,
    TResult? Function(_CreateTicketProductChanged value)? productChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTicketStarted value)? started,
    TResult Function(_CreateTicketNextStepRequested value)? nextStepRequested,
    TResult Function(_CreateTicketFeatureStepSaved value)? featureStepSaved,
    TResult Function(_CreateTicketProductChanged value)? productChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTicketEventCopyWith<$Res> {
  factory $CreateTicketEventCopyWith(
          CreateTicketEvent value, $Res Function(CreateTicketEvent) then) =
      _$CreateTicketEventCopyWithImpl<$Res, CreateTicketEvent>;
}

/// @nodoc
class _$CreateTicketEventCopyWithImpl<$Res, $Val extends CreateTicketEvent>
    implements $CreateTicketEventCopyWith<$Res> {
  _$CreateTicketEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CreateTicketStartedCopyWith<$Res> {
  factory _$$_CreateTicketStartedCopyWith(_$_CreateTicketStarted value,
          $Res Function(_$_CreateTicketStarted) then) =
      __$$_CreateTicketStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateTicketStartedCopyWithImpl<$Res>
    extends _$CreateTicketEventCopyWithImpl<$Res, _$_CreateTicketStarted>
    implements _$$_CreateTicketStartedCopyWith<$Res> {
  __$$_CreateTicketStartedCopyWithImpl(_$_CreateTicketStarted _value,
      $Res Function(_$_CreateTicketStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CreateTicketStarted implements _CreateTicketStarted {
  const _$_CreateTicketStarted();

  @override
  String toString() {
    return 'CreateTicketEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CreateTicketStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() nextStepRequested,
    required TResult Function() featureStepSaved,
    required TResult Function(Product product) productChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? nextStepRequested,
    TResult? Function()? featureStepSaved,
    TResult? Function(Product product)? productChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? nextStepRequested,
    TResult Function()? featureStepSaved,
    TResult Function(Product product)? productChanged,
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
    required TResult Function(_CreateTicketStarted value) started,
    required TResult Function(_CreateTicketNextStepRequested value)
        nextStepRequested,
    required TResult Function(_CreateTicketFeatureStepSaved value)
        featureStepSaved,
    required TResult Function(_CreateTicketProductChanged value) productChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTicketStarted value)? started,
    TResult? Function(_CreateTicketNextStepRequested value)? nextStepRequested,
    TResult? Function(_CreateTicketFeatureStepSaved value)? featureStepSaved,
    TResult? Function(_CreateTicketProductChanged value)? productChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTicketStarted value)? started,
    TResult Function(_CreateTicketNextStepRequested value)? nextStepRequested,
    TResult Function(_CreateTicketFeatureStepSaved value)? featureStepSaved,
    TResult Function(_CreateTicketProductChanged value)? productChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _CreateTicketStarted implements CreateTicketEvent {
  const factory _CreateTicketStarted() = _$_CreateTicketStarted;
}

/// @nodoc
abstract class _$$_CreateTicketNextStepRequestedCopyWith<$Res> {
  factory _$$_CreateTicketNextStepRequestedCopyWith(
          _$_CreateTicketNextStepRequested value,
          $Res Function(_$_CreateTicketNextStepRequested) then) =
      __$$_CreateTicketNextStepRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateTicketNextStepRequestedCopyWithImpl<$Res>
    extends _$CreateTicketEventCopyWithImpl<$Res,
        _$_CreateTicketNextStepRequested>
    implements _$$_CreateTicketNextStepRequestedCopyWith<$Res> {
  __$$_CreateTicketNextStepRequestedCopyWithImpl(
      _$_CreateTicketNextStepRequested _value,
      $Res Function(_$_CreateTicketNextStepRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CreateTicketNextStepRequested
    implements _CreateTicketNextStepRequested {
  const _$_CreateTicketNextStepRequested();

  @override
  String toString() {
    return 'CreateTicketEvent.nextStepRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTicketNextStepRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() nextStepRequested,
    required TResult Function() featureStepSaved,
    required TResult Function(Product product) productChanged,
  }) {
    return nextStepRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? nextStepRequested,
    TResult? Function()? featureStepSaved,
    TResult? Function(Product product)? productChanged,
  }) {
    return nextStepRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? nextStepRequested,
    TResult Function()? featureStepSaved,
    TResult Function(Product product)? productChanged,
    required TResult orElse(),
  }) {
    if (nextStepRequested != null) {
      return nextStepRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTicketStarted value) started,
    required TResult Function(_CreateTicketNextStepRequested value)
        nextStepRequested,
    required TResult Function(_CreateTicketFeatureStepSaved value)
        featureStepSaved,
    required TResult Function(_CreateTicketProductChanged value) productChanged,
  }) {
    return nextStepRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTicketStarted value)? started,
    TResult? Function(_CreateTicketNextStepRequested value)? nextStepRequested,
    TResult? Function(_CreateTicketFeatureStepSaved value)? featureStepSaved,
    TResult? Function(_CreateTicketProductChanged value)? productChanged,
  }) {
    return nextStepRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTicketStarted value)? started,
    TResult Function(_CreateTicketNextStepRequested value)? nextStepRequested,
    TResult Function(_CreateTicketFeatureStepSaved value)? featureStepSaved,
    TResult Function(_CreateTicketProductChanged value)? productChanged,
    required TResult orElse(),
  }) {
    if (nextStepRequested != null) {
      return nextStepRequested(this);
    }
    return orElse();
  }
}

abstract class _CreateTicketNextStepRequested implements CreateTicketEvent {
  const factory _CreateTicketNextStepRequested() =
      _$_CreateTicketNextStepRequested;
}

/// @nodoc
abstract class _$$_CreateTicketFeatureStepSavedCopyWith<$Res> {
  factory _$$_CreateTicketFeatureStepSavedCopyWith(
          _$_CreateTicketFeatureStepSaved value,
          $Res Function(_$_CreateTicketFeatureStepSaved) then) =
      __$$_CreateTicketFeatureStepSavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateTicketFeatureStepSavedCopyWithImpl<$Res>
    extends _$CreateTicketEventCopyWithImpl<$Res,
        _$_CreateTicketFeatureStepSaved>
    implements _$$_CreateTicketFeatureStepSavedCopyWith<$Res> {
  __$$_CreateTicketFeatureStepSavedCopyWithImpl(
      _$_CreateTicketFeatureStepSaved _value,
      $Res Function(_$_CreateTicketFeatureStepSaved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CreateTicketFeatureStepSaved implements _CreateTicketFeatureStepSaved {
  const _$_CreateTicketFeatureStepSaved();

  @override
  String toString() {
    return 'CreateTicketEvent.featureStepSaved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTicketFeatureStepSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() nextStepRequested,
    required TResult Function() featureStepSaved,
    required TResult Function(Product product) productChanged,
  }) {
    return featureStepSaved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? nextStepRequested,
    TResult? Function()? featureStepSaved,
    TResult? Function(Product product)? productChanged,
  }) {
    return featureStepSaved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? nextStepRequested,
    TResult Function()? featureStepSaved,
    TResult Function(Product product)? productChanged,
    required TResult orElse(),
  }) {
    if (featureStepSaved != null) {
      return featureStepSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTicketStarted value) started,
    required TResult Function(_CreateTicketNextStepRequested value)
        nextStepRequested,
    required TResult Function(_CreateTicketFeatureStepSaved value)
        featureStepSaved,
    required TResult Function(_CreateTicketProductChanged value) productChanged,
  }) {
    return featureStepSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTicketStarted value)? started,
    TResult? Function(_CreateTicketNextStepRequested value)? nextStepRequested,
    TResult? Function(_CreateTicketFeatureStepSaved value)? featureStepSaved,
    TResult? Function(_CreateTicketProductChanged value)? productChanged,
  }) {
    return featureStepSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTicketStarted value)? started,
    TResult Function(_CreateTicketNextStepRequested value)? nextStepRequested,
    TResult Function(_CreateTicketFeatureStepSaved value)? featureStepSaved,
    TResult Function(_CreateTicketProductChanged value)? productChanged,
    required TResult orElse(),
  }) {
    if (featureStepSaved != null) {
      return featureStepSaved(this);
    }
    return orElse();
  }
}

abstract class _CreateTicketFeatureStepSaved implements CreateTicketEvent {
  const factory _CreateTicketFeatureStepSaved() =
      _$_CreateTicketFeatureStepSaved;
}

/// @nodoc
abstract class _$$_CreateTicketProductChangedCopyWith<$Res> {
  factory _$$_CreateTicketProductChangedCopyWith(
          _$_CreateTicketProductChanged value,
          $Res Function(_$_CreateTicketProductChanged) then) =
      __$$_CreateTicketProductChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$_CreateTicketProductChangedCopyWithImpl<$Res>
    extends _$CreateTicketEventCopyWithImpl<$Res, _$_CreateTicketProductChanged>
    implements _$$_CreateTicketProductChangedCopyWith<$Res> {
  __$$_CreateTicketProductChangedCopyWithImpl(
      _$_CreateTicketProductChanged _value,
      $Res Function(_$_CreateTicketProductChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_CreateTicketProductChanged(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$_CreateTicketProductChanged implements _CreateTicketProductChanged {
  const _$_CreateTicketProductChanged(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'CreateTicketEvent.productChanged(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTicketProductChanged &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateTicketProductChangedCopyWith<_$_CreateTicketProductChanged>
      get copyWith => __$$_CreateTicketProductChangedCopyWithImpl<
          _$_CreateTicketProductChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() nextStepRequested,
    required TResult Function() featureStepSaved,
    required TResult Function(Product product) productChanged,
  }) {
    return productChanged(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? nextStepRequested,
    TResult? Function()? featureStepSaved,
    TResult? Function(Product product)? productChanged,
  }) {
    return productChanged?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? nextStepRequested,
    TResult Function()? featureStepSaved,
    TResult Function(Product product)? productChanged,
    required TResult orElse(),
  }) {
    if (productChanged != null) {
      return productChanged(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTicketStarted value) started,
    required TResult Function(_CreateTicketNextStepRequested value)
        nextStepRequested,
    required TResult Function(_CreateTicketFeatureStepSaved value)
        featureStepSaved,
    required TResult Function(_CreateTicketProductChanged value) productChanged,
  }) {
    return productChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTicketStarted value)? started,
    TResult? Function(_CreateTicketNextStepRequested value)? nextStepRequested,
    TResult? Function(_CreateTicketFeatureStepSaved value)? featureStepSaved,
    TResult? Function(_CreateTicketProductChanged value)? productChanged,
  }) {
    return productChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTicketStarted value)? started,
    TResult Function(_CreateTicketNextStepRequested value)? nextStepRequested,
    TResult Function(_CreateTicketFeatureStepSaved value)? featureStepSaved,
    TResult Function(_CreateTicketProductChanged value)? productChanged,
    required TResult orElse(),
  }) {
    if (productChanged != null) {
      return productChanged(this);
    }
    return orElse();
  }
}

abstract class _CreateTicketProductChanged implements CreateTicketEvent {
  const factory _CreateTicketProductChanged(final Product product) =
      _$_CreateTicketProductChanged;

  Product get product;
  @JsonKey(ignore: true)
  _$$_CreateTicketProductChangedCopyWith<_$_CreateTicketProductChanged>
      get copyWith => throw _privateConstructorUsedError;
}

CreateTicketState _$CreateTicketStateFromJson(Map<String, dynamic> json) {
  return _CreateTicketState.fromJson(json);
}

/// @nodoc
mixin _$CreateTicketState {
  CreateTicketStatus get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  int get currentStep => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  Issue? get issue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTicketStateCopyWith<CreateTicketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTicketStateCopyWith<$Res> {
  factory $CreateTicketStateCopyWith(
          CreateTicketState value, $Res Function(CreateTicketState) then) =
      _$CreateTicketStateCopyWithImpl<$Res, CreateTicketState>;
  @useResult
  $Res call(
      {CreateTicketStatus status,
      @JsonKey(ignore: true) int currentStep,
      @JsonKey(ignore: true) Issue? issue});

  $IssueCopyWith<$Res>? get issue;
}

/// @nodoc
class _$CreateTicketStateCopyWithImpl<$Res, $Val extends CreateTicketState>
    implements $CreateTicketStateCopyWith<$Res> {
  _$CreateTicketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentStep = null,
    Object? issue = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CreateTicketStatus,
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      issue: freezed == issue
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as Issue?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IssueCopyWith<$Res>? get issue {
    if (_value.issue == null) {
      return null;
    }

    return $IssueCopyWith<$Res>(_value.issue!, (value) {
      return _then(_value.copyWith(issue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateTicketStateCopyWith<$Res>
    implements $CreateTicketStateCopyWith<$Res> {
  factory _$$_CreateTicketStateCopyWith(_$_CreateTicketState value,
          $Res Function(_$_CreateTicketState) then) =
      __$$_CreateTicketStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CreateTicketStatus status,
      @JsonKey(ignore: true) int currentStep,
      @JsonKey(ignore: true) Issue? issue});

  @override
  $IssueCopyWith<$Res>? get issue;
}

/// @nodoc
class __$$_CreateTicketStateCopyWithImpl<$Res>
    extends _$CreateTicketStateCopyWithImpl<$Res, _$_CreateTicketState>
    implements _$$_CreateTicketStateCopyWith<$Res> {
  __$$_CreateTicketStateCopyWithImpl(
      _$_CreateTicketState _value, $Res Function(_$_CreateTicketState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentStep = null,
    Object? issue = freezed,
  }) {
    return _then(_$_CreateTicketState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CreateTicketStatus,
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      issue: freezed == issue
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as Issue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateTicketState implements _CreateTicketState {
  const _$_CreateTicketState(
      {this.status = CreateTicketStatus.ready,
      @JsonKey(ignore: true) this.currentStep = 1,
      @JsonKey(ignore: true) this.issue});

  factory _$_CreateTicketState.fromJson(Map<String, dynamic> json) =>
      _$$_CreateTicketStateFromJson(json);

  @override
  @JsonKey()
  final CreateTicketStatus status;
  @override
  @JsonKey(ignore: true)
  final int currentStep;
  @override
  @JsonKey(ignore: true)
  final Issue? issue;

  @override
  String toString() {
    return 'CreateTicketState(status: $status, currentStep: $currentStep, issue: $issue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTicketState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            (identical(other.issue, issue) || other.issue == issue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, currentStep, issue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateTicketStateCopyWith<_$_CreateTicketState> get copyWith =>
      __$$_CreateTicketStateCopyWithImpl<_$_CreateTicketState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateTicketStateToJson(
      this,
    );
  }
}

abstract class _CreateTicketState implements CreateTicketState {
  const factory _CreateTicketState(
      {final CreateTicketStatus status,
      @JsonKey(ignore: true) final int currentStep,
      @JsonKey(ignore: true) final Issue? issue}) = _$_CreateTicketState;

  factory _CreateTicketState.fromJson(Map<String, dynamic> json) =
      _$_CreateTicketState.fromJson;

  @override
  CreateTicketStatus get status;
  @override
  @JsonKey(ignore: true)
  int get currentStep;
  @override
  @JsonKey(ignore: true)
  Issue? get issue;
  @override
  @JsonKey(ignore: true)
  _$$_CreateTicketStateCopyWith<_$_CreateTicketState> get copyWith =>
      throw _privateConstructorUsedError;
}
