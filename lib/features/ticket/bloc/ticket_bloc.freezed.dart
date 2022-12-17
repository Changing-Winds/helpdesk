// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(Ticket ticket) updated,
    required TResult Function(String commentSlug) commentUrlCopied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function(Ticket ticket)? updated,
    TResult? Function(String commentSlug)? commentUrlCopied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Ticket ticket)? updated,
    TResult Function(String commentSlug)? commentUrlCopied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketFetched value) fetched,
    required TResult Function(_TicketUpdated value) updated,
    required TResult Function(_TicketCommentUrlCopied value) commentUrlCopied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketFetched value)? fetched,
    TResult? Function(_TicketUpdated value)? updated,
    TResult? Function(_TicketCommentUrlCopied value)? commentUrlCopied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketFetched value)? fetched,
    TResult Function(_TicketUpdated value)? updated,
    TResult Function(_TicketCommentUrlCopied value)? commentUrlCopied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketEventCopyWith<$Res> {
  factory $TicketEventCopyWith(
          TicketEvent value, $Res Function(TicketEvent) then) =
      _$TicketEventCopyWithImpl<$Res, TicketEvent>;
}

/// @nodoc
class _$TicketEventCopyWithImpl<$Res, $Val extends TicketEvent>
    implements $TicketEventCopyWith<$Res> {
  _$TicketEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TicketFetchedCopyWith<$Res> {
  factory _$$_TicketFetchedCopyWith(
          _$_TicketFetched value, $Res Function(_$_TicketFetched) then) =
      __$$_TicketFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TicketFetchedCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$_TicketFetched>
    implements _$$_TicketFetchedCopyWith<$Res> {
  __$$_TicketFetchedCopyWithImpl(
      _$_TicketFetched _value, $Res Function(_$_TicketFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TicketFetched with DiagnosticableTreeMixin implements _TicketFetched {
  const _$_TicketFetched();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TicketEvent.fetched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TicketEvent.fetched'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TicketFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(Ticket ticket) updated,
    required TResult Function(String commentSlug) commentUrlCopied,
  }) {
    return fetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function(Ticket ticket)? updated,
    TResult? Function(String commentSlug)? commentUrlCopied,
  }) {
    return fetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Ticket ticket)? updated,
    TResult Function(String commentSlug)? commentUrlCopied,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketFetched value) fetched,
    required TResult Function(_TicketUpdated value) updated,
    required TResult Function(_TicketCommentUrlCopied value) commentUrlCopied,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketFetched value)? fetched,
    TResult? Function(_TicketUpdated value)? updated,
    TResult? Function(_TicketCommentUrlCopied value)? commentUrlCopied,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketFetched value)? fetched,
    TResult Function(_TicketUpdated value)? updated,
    TResult Function(_TicketCommentUrlCopied value)? commentUrlCopied,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _TicketFetched implements TicketEvent {
  const factory _TicketFetched() = _$_TicketFetched;
}

/// @nodoc
abstract class _$$_TicketUpdatedCopyWith<$Res> {
  factory _$$_TicketUpdatedCopyWith(
          _$_TicketUpdated value, $Res Function(_$_TicketUpdated) then) =
      __$$_TicketUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({Ticket ticket});
}

/// @nodoc
class __$$_TicketUpdatedCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$_TicketUpdated>
    implements _$$_TicketUpdatedCopyWith<$Res> {
  __$$_TicketUpdatedCopyWithImpl(
      _$_TicketUpdated _value, $Res Function(_$_TicketUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_$_TicketUpdated(
      null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
    ));
  }
}

/// @nodoc

class _$_TicketUpdated with DiagnosticableTreeMixin implements _TicketUpdated {
  const _$_TicketUpdated(this.ticket);

  @override
  final Ticket ticket;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TicketEvent.updated(ticket: $ticket)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TicketEvent.updated'))
      ..add(DiagnosticsProperty('ticket', ticket));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketUpdated &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketUpdatedCopyWith<_$_TicketUpdated> get copyWith =>
      __$$_TicketUpdatedCopyWithImpl<_$_TicketUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(Ticket ticket) updated,
    required TResult Function(String commentSlug) commentUrlCopied,
  }) {
    return updated(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function(Ticket ticket)? updated,
    TResult? Function(String commentSlug)? commentUrlCopied,
  }) {
    return updated?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Ticket ticket)? updated,
    TResult Function(String commentSlug)? commentUrlCopied,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketFetched value) fetched,
    required TResult Function(_TicketUpdated value) updated,
    required TResult Function(_TicketCommentUrlCopied value) commentUrlCopied,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketFetched value)? fetched,
    TResult? Function(_TicketUpdated value)? updated,
    TResult? Function(_TicketCommentUrlCopied value)? commentUrlCopied,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketFetched value)? fetched,
    TResult Function(_TicketUpdated value)? updated,
    TResult Function(_TicketCommentUrlCopied value)? commentUrlCopied,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _TicketUpdated implements TicketEvent {
  const factory _TicketUpdated(final Ticket ticket) = _$_TicketUpdated;

  Ticket get ticket;
  @JsonKey(ignore: true)
  _$$_TicketUpdatedCopyWith<_$_TicketUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TicketCommentUrlCopiedCopyWith<$Res> {
  factory _$$_TicketCommentUrlCopiedCopyWith(_$_TicketCommentUrlCopied value,
          $Res Function(_$_TicketCommentUrlCopied) then) =
      __$$_TicketCommentUrlCopiedCopyWithImpl<$Res>;
  @useResult
  $Res call({String commentSlug});
}

/// @nodoc
class __$$_TicketCommentUrlCopiedCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$_TicketCommentUrlCopied>
    implements _$$_TicketCommentUrlCopiedCopyWith<$Res> {
  __$$_TicketCommentUrlCopiedCopyWithImpl(_$_TicketCommentUrlCopied _value,
      $Res Function(_$_TicketCommentUrlCopied) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentSlug = null,
  }) {
    return _then(_$_TicketCommentUrlCopied(
      commentSlug: null == commentSlug
          ? _value.commentSlug
          : commentSlug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TicketCommentUrlCopied
    with DiagnosticableTreeMixin
    implements _TicketCommentUrlCopied {
  const _$_TicketCommentUrlCopied({required this.commentSlug});

  @override
  final String commentSlug;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TicketEvent.commentUrlCopied(commentSlug: $commentSlug)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TicketEvent.commentUrlCopied'))
      ..add(DiagnosticsProperty('commentSlug', commentSlug));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketCommentUrlCopied &&
            (identical(other.commentSlug, commentSlug) ||
                other.commentSlug == commentSlug));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentSlug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketCommentUrlCopiedCopyWith<_$_TicketCommentUrlCopied> get copyWith =>
      __$$_TicketCommentUrlCopiedCopyWithImpl<_$_TicketCommentUrlCopied>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function(Ticket ticket) updated,
    required TResult Function(String commentSlug) commentUrlCopied,
  }) {
    return commentUrlCopied(commentSlug);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function(Ticket ticket)? updated,
    TResult? Function(String commentSlug)? commentUrlCopied,
  }) {
    return commentUrlCopied?.call(commentSlug);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function(Ticket ticket)? updated,
    TResult Function(String commentSlug)? commentUrlCopied,
    required TResult orElse(),
  }) {
    if (commentUrlCopied != null) {
      return commentUrlCopied(commentSlug);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketFetched value) fetched,
    required TResult Function(_TicketUpdated value) updated,
    required TResult Function(_TicketCommentUrlCopied value) commentUrlCopied,
  }) {
    return commentUrlCopied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketFetched value)? fetched,
    TResult? Function(_TicketUpdated value)? updated,
    TResult? Function(_TicketCommentUrlCopied value)? commentUrlCopied,
  }) {
    return commentUrlCopied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketFetched value)? fetched,
    TResult Function(_TicketUpdated value)? updated,
    TResult Function(_TicketCommentUrlCopied value)? commentUrlCopied,
    required TResult orElse(),
  }) {
    if (commentUrlCopied != null) {
      return commentUrlCopied(this);
    }
    return orElse();
  }
}

abstract class _TicketCommentUrlCopied implements TicketEvent {
  const factory _TicketCommentUrlCopied({required final String commentSlug}) =
      _$_TicketCommentUrlCopied;

  String get commentSlug;
  @JsonKey(ignore: true)
  _$$_TicketCommentUrlCopiedCopyWith<_$_TicketCommentUrlCopied> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketState _$TicketStateFromJson(Map<String, dynamic> json) {
  return _TicketState.fromJson(json);
}

/// @nodoc
mixin _$TicketState {
  TicketStatus get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  Ticket? get ticket => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  Failure? get failure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketStateCopyWith<TicketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketStateCopyWith<$Res> {
  factory $TicketStateCopyWith(
          TicketState value, $Res Function(TicketState) then) =
      _$TicketStateCopyWithImpl<$Res, TicketState>;
  @useResult
  $Res call(
      {TicketStatus status,
      @JsonKey(ignore: true) Ticket? ticket,
      @JsonKey(ignore: true) Failure? failure});
}

/// @nodoc
class _$TicketStateCopyWithImpl<$Res, $Val extends TicketState>
    implements $TicketStateCopyWith<$Res> {
  _$TicketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? ticket = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TicketStatus,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketStateCopyWith<$Res>
    implements $TicketStateCopyWith<$Res> {
  factory _$$_TicketStateCopyWith(
          _$_TicketState value, $Res Function(_$_TicketState) then) =
      __$$_TicketStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TicketStatus status,
      @JsonKey(ignore: true) Ticket? ticket,
      @JsonKey(ignore: true) Failure? failure});
}

/// @nodoc
class __$$_TicketStateCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$_TicketState>
    implements _$$_TicketStateCopyWith<$Res> {
  __$$_TicketStateCopyWithImpl(
      _$_TicketState _value, $Res Function(_$_TicketState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? ticket = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_TicketState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TicketStatus,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketState with DiagnosticableTreeMixin implements _TicketState {
  const _$_TicketState(
      {this.status = TicketStatus.initial,
      @JsonKey(ignore: true) this.ticket,
      @JsonKey(ignore: true) this.failure});

  factory _$_TicketState.fromJson(Map<String, dynamic> json) =>
      _$$_TicketStateFromJson(json);

  @override
  @JsonKey()
  final TicketStatus status;
  @override
  @JsonKey(ignore: true)
  final Ticket? ticket;
  @override
  @JsonKey(ignore: true)
  final Failure? failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TicketState(status: $status, ticket: $ticket, failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TicketState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('ticket', ticket))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, ticket, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketStateCopyWith<_$_TicketState> get copyWith =>
      __$$_TicketStateCopyWithImpl<_$_TicketState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketStateToJson(
      this,
    );
  }
}

abstract class _TicketState implements TicketState {
  const factory _TicketState(
      {final TicketStatus status,
      @JsonKey(ignore: true) final Ticket? ticket,
      @JsonKey(ignore: true) final Failure? failure}) = _$_TicketState;

  factory _TicketState.fromJson(Map<String, dynamic> json) =
      _$_TicketState.fromJson;

  @override
  TicketStatus get status;
  @override
  @JsonKey(ignore: true)
  Ticket? get ticket;
  @override
  @JsonKey(ignore: true)
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_TicketStateCopyWith<_$_TicketState> get copyWith =>
      throw _privateConstructorUsedError;
}
