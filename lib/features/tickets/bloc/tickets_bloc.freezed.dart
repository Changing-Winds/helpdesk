// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketsEvent {
  User? get user => throw _privateConstructorUsedError;
  String? get order => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, String? order) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user, String? order)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, String? order)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketsFetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketsFetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketsFetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketsEventCopyWith<TicketsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsEventCopyWith<$Res> {
  factory $TicketsEventCopyWith(
          TicketsEvent value, $Res Function(TicketsEvent) then) =
      _$TicketsEventCopyWithImpl<$Res, TicketsEvent>;
  @useResult
  $Res call({User? user, String? order});
}

/// @nodoc
class _$TicketsEventCopyWithImpl<$Res, $Val extends TicketsEvent>
    implements $TicketsEventCopyWith<$Res> {
  _$TicketsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketsFetchedCopyWith<$Res>
    implements $TicketsEventCopyWith<$Res> {
  factory _$$_TicketsFetchedCopyWith(
          _$_TicketsFetched value, $Res Function(_$_TicketsFetched) then) =
      __$$_TicketsFetchedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, String? order});
}

/// @nodoc
class __$$_TicketsFetchedCopyWithImpl<$Res>
    extends _$TicketsEventCopyWithImpl<$Res, _$_TicketsFetched>
    implements _$$_TicketsFetchedCopyWith<$Res> {
  __$$_TicketsFetchedCopyWithImpl(
      _$_TicketsFetched _value, $Res Function(_$_TicketsFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? order = freezed,
  }) {
    return _then(_$_TicketsFetched(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TicketsFetched implements _TicketsFetched {
  const _$_TicketsFetched({this.user, this.order});

  @override
  final User? user;
  @override
  final String? order;

  @override
  String toString() {
    return 'TicketsEvent.fetched(user: $user, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketsFetched &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketsFetchedCopyWith<_$_TicketsFetched> get copyWith =>
      __$$_TicketsFetchedCopyWithImpl<_$_TicketsFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, String? order) fetched,
  }) {
    return fetched(user, order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user, String? order)? fetched,
  }) {
    return fetched?.call(user, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, String? order)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(user, order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketsFetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketsFetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketsFetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _TicketsFetched implements TicketsEvent {
  const factory _TicketsFetched({final User? user, final String? order}) =
      _$_TicketsFetched;

  @override
  User? get user;
  @override
  String? get order;
  @override
  @JsonKey(ignore: true)
  _$$_TicketsFetchedCopyWith<_$_TicketsFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketsState _$TicketsStateFromJson(Map<String, dynamic> json) {
  return _TicketsState.fromJson(json);
}

/// @nodoc
mixin _$TicketsState {
  TicketsStatus get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<Ticket> get tickets => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  int get totalItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketsStateCopyWith<TicketsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsStateCopyWith<$Res> {
  factory $TicketsStateCopyWith(
          TicketsState value, $Res Function(TicketsState) then) =
      _$TicketsStateCopyWithImpl<$Res, TicketsState>;
  @useResult
  $Res call(
      {TicketsStatus status,
      @JsonKey(ignore: true) List<Ticket> tickets,
      @JsonKey(ignore: true) int totalItems});
}

/// @nodoc
class _$TicketsStateCopyWithImpl<$Res, $Val extends TicketsState>
    implements $TicketsStateCopyWith<$Res> {
  _$TicketsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tickets = null,
    Object? totalItems = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TicketsStatus,
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketsStateCopyWith<$Res>
    implements $TicketsStateCopyWith<$Res> {
  factory _$$_TicketsStateCopyWith(
          _$_TicketsState value, $Res Function(_$_TicketsState) then) =
      __$$_TicketsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TicketsStatus status,
      @JsonKey(ignore: true) List<Ticket> tickets,
      @JsonKey(ignore: true) int totalItems});
}

/// @nodoc
class __$$_TicketsStateCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$_TicketsState>
    implements _$$_TicketsStateCopyWith<$Res> {
  __$$_TicketsStateCopyWithImpl(
      _$_TicketsState _value, $Res Function(_$_TicketsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tickets = null,
    Object? totalItems = null,
  }) {
    return _then(_$_TicketsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TicketsStatus,
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketsState implements _TicketsState {
  const _$_TicketsState(
      {this.status = TicketsStatus.initial,
      @JsonKey(ignore: true) final List<Ticket> tickets = const [],
      @JsonKey(ignore: true) this.totalItems = 0})
      : _tickets = tickets;

  factory _$_TicketsState.fromJson(Map<String, dynamic> json) =>
      _$$_TicketsStateFromJson(json);

  @override
  @JsonKey()
  final TicketsStatus status;
  final List<Ticket> _tickets;
  @override
  @JsonKey(ignore: true)
  List<Ticket> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  @JsonKey(ignore: true)
  final int totalItems;

  @override
  String toString() {
    return 'TicketsState(status: $status, tickets: $tickets, totalItems: $totalItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketsState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._tickets, _tickets) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_tickets), totalItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketsStateCopyWith<_$_TicketsState> get copyWith =>
      __$$_TicketsStateCopyWithImpl<_$_TicketsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketsStateToJson(
      this,
    );
  }
}

abstract class _TicketsState implements TicketsState {
  const factory _TicketsState(
      {final TicketsStatus status,
      @JsonKey(ignore: true) final List<Ticket> tickets,
      @JsonKey(ignore: true) final int totalItems}) = _$_TicketsState;

  factory _TicketsState.fromJson(Map<String, dynamic> json) =
      _$_TicketsState.fromJson;

  @override
  TicketsStatus get status;
  @override
  @JsonKey(ignore: true)
  List<Ticket> get tickets;
  @override
  @JsonKey(ignore: true)
  int get totalItems;
  @override
  @JsonKey(ignore: true)
  _$$_TicketsStateCopyWith<_$_TicketsState> get copyWith =>
      throw _privateConstructorUsedError;
}
