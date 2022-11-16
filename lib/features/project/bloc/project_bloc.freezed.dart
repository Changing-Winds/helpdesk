// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project? project, String authorID) fetched,
    required TResult Function(Project project) edited,
    required TResult Function(Project project) updated,
    required TResult Function(Project project) deleted,
    required TResult Function() editingCancelled,
    required TResult Function(Project project, String title, String abstract)
        editingSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Project? project, String authorID)? fetched,
    TResult Function(Project project)? edited,
    TResult Function(Project project)? updated,
    TResult Function(Project project)? deleted,
    TResult Function()? editingCancelled,
    TResult Function(Project project, String title, String abstract)?
        editingSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project? project, String authorID)? fetched,
    TResult Function(Project project)? edited,
    TResult Function(Project project)? updated,
    TResult Function(Project project)? deleted,
    TResult Function()? editingCancelled,
    TResult Function(Project project, String title, String abstract)?
        editingSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectFetched value) fetched,
    required TResult Function(_ProjectEdited value) edited,
    required TResult Function(_ProjectUpdated value) updated,
    required TResult Function(_ProjectDeleted value) deleted,
    required TResult Function(_ProjectEditingCancelled value) editingCancelled,
    required TResult Function(_ProjectEditingSaved value) editingSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProjectFetched value)? fetched,
    TResult Function(_ProjectEdited value)? edited,
    TResult Function(_ProjectUpdated value)? updated,
    TResult Function(_ProjectDeleted value)? deleted,
    TResult Function(_ProjectEditingCancelled value)? editingCancelled,
    TResult Function(_ProjectEditingSaved value)? editingSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectFetched value)? fetched,
    TResult Function(_ProjectEdited value)? edited,
    TResult Function(_ProjectUpdated value)? updated,
    TResult Function(_ProjectDeleted value)? deleted,
    TResult Function(_ProjectEditingCancelled value)? editingCancelled,
    TResult Function(_ProjectEditingSaved value)? editingSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEventCopyWith<$Res> {
  factory $ProjectEventCopyWith(
          ProjectEvent value, $Res Function(ProjectEvent) then) =
      _$ProjectEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProjectEventCopyWithImpl<$Res> implements $ProjectEventCopyWith<$Res> {
  _$ProjectEventCopyWithImpl(this._value, this._then);

  final ProjectEvent _value;
  // ignore: unused_field
  final $Res Function(ProjectEvent) _then;
}

/// @nodoc
abstract class _$$_ProjectFetchedCopyWith<$Res> {
  factory _$$_ProjectFetchedCopyWith(
          _$_ProjectFetched value, $Res Function(_$_ProjectFetched) then) =
      __$$_ProjectFetchedCopyWithImpl<$Res>;
  $Res call({Project? project, String authorID});

  $ProjectCopyWith<$Res>? get project;
}

/// @nodoc
class __$$_ProjectFetchedCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res>
    implements _$$_ProjectFetchedCopyWith<$Res> {
  __$$_ProjectFetchedCopyWithImpl(
      _$_ProjectFetched _value, $Res Function(_$_ProjectFetched) _then)
      : super(_value, (v) => _then(v as _$_ProjectFetched));

  @override
  _$_ProjectFetched get _value => super._value as _$_ProjectFetched;

  @override
  $Res call({
    Object? project = freezed,
    Object? authorID = freezed,
  }) {
    return _then(_$_ProjectFetched(
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project?,
      authorID: authorID == freezed
          ? _value.authorID
          : authorID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ProjectCopyWith<$Res>? get project {
    if (_value.project == null) {
      return null;
    }

    return $ProjectCopyWith<$Res>(_value.project!, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc

class _$_ProjectFetched implements _ProjectFetched {
  const _$_ProjectFetched({required this.project, required this.authorID});

  @override
  final Project? project;
  @override
  final String authorID;

  @override
  String toString() {
    return 'ProjectEvent.fetched(project: $project, authorID: $authorID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectFetched &&
            const DeepCollectionEquality().equals(other.project, project) &&
            const DeepCollectionEquality().equals(other.authorID, authorID));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(project),
      const DeepCollectionEquality().hash(authorID));

  @JsonKey(ignore: true)
  @override
  _$$_ProjectFetchedCopyWith<_$_ProjectFetched> get copyWith =>
      __$$_ProjectFetchedCopyWithImpl<_$_ProjectFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project? project, String authorID) fetched,
    required TResult Function(Project project) edited,
    required TResult Function(Project project) updated,
    required TResult Function(Project project) deleted,
    required TResult Function() editingCancelled,
    required TResult Function(Project project, String title, String abstract)
        editingSaved,
  }) {
    return fetched(project, authorID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Project? project, String authorID)? fetched,
    TResult Function(Project project)? edited,
    TResult Function(Project project)? updated,
    TResult Function(Project project)? deleted,
    TResult Function()? editingCancelled,
    TResult Function(Project project, String title, String abstract)?
        editingSaved,
  }) {
    return fetched?.call(project, authorID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project? project, String authorID)? fetched,
    TResult Function(Project project)? edited,
    TResult Function(Project project)? updated,
    TResult Function(Project project)? deleted,
    TResult Function()? editingCancelled,
    TResult Function(Project project, String title, String abstract)?
        editingSaved,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(project, authorID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectFetched value) fetched,
    required TResult Function(_ProjectEdited value) edited,
    required TResult Function(_ProjectUpdated value) updated,
    required TResult Function(_ProjectDeleted value) deleted,
    required TResult Function(_ProjectEditingCancelled value) editingCancelled,
    required TResult Function(_ProjectEditingSaved value) editingSaved,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProjectFetched value)? fetched,
    TResult Function(_ProjectEdited value)? edited,
    TResult Function(_ProjectUpdated value)? updated,
    TResult Function(_ProjectDeleted value)? deleted,
    TResult Function(_ProjectEditingCancelled value)? editingCancelled,
    TResult Function(_ProjectEditingSaved value)? editingSaved,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectFetched value)? fetched,
    TResult Function(_ProjectEdited value)? edited,
    TResult Function(_ProjectUpdated value)? updated,
    TResult Function(_ProjectDeleted value)? deleted,
    TResult Function(_ProjectEditingCancelled value)? editingCancelled,
    TResult Function(_ProjectEditingSaved value)? editingSaved,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _ProjectFetched implements ProjectEvent {
  const factory _ProjectFetched(
      {required final Project? project,
      required final String authorID}) = _$_ProjectFetched;

  Project? get project => throw _privateConstructorUsedError;
  String get authorID => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ProjectFetchedCopyWith<_$_ProjectFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProjectEditedCopyWith<$Res> {
  factory _$$_ProjectEditedCopyWith(
          _$_ProjectEdited value, $Res Function(_$_ProjectEdited) then) =
      __$$_ProjectEditedCopyWithImpl<$Res>;
  $Res call({Project project});

  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$_ProjectEditedCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res>
    implements _$$_ProjectEditedCopyWith<$Res> {
  __$$_ProjectEditedCopyWithImpl(
      _$_ProjectEdited _value, $Res Function(_$_ProjectEdited) _then)
      : super(_value, (v) => _then(v as _$_ProjectEdited));

  @override
  _$_ProjectEdited get _value => super._value as _$_ProjectEdited;

  @override
  $Res call({
    Object? project = freezed,
  }) {
    return _then(_$_ProjectEdited(
      project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
    ));
  }

  @override
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc

class _$_ProjectEdited implements _ProjectEdited {
  const _$_ProjectEdited(this.project);

  @override
  final Project project;

  @override
  String toString() {
    return 'ProjectEvent.edited(project: $project)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectEdited &&
            const DeepCollectionEquality().equals(other.project, project));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(project));

  @JsonKey(ignore: true)
  @override
  _$$_ProjectEditedCopyWith<_$_ProjectEdited> get copyWith =>
      __$$_ProjectEditedCopyWithImpl<_$_ProjectEdited>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project? project, String authorID) fetched,
    required TResult Function(Project project) edited,
    required TResult Function(Project project) updated,
    required TResult Function(Project project) deleted,
    required TResult Function() editingCancelled,
    required TResult Function(Project project, String title, String abstract)
        editingSaved,
  }) {
    return edited(project);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Project? project, String authorID)? fetched,
    TResult Function(Project project)? edited,
    TResult Function(Project project)? updated,
    TResult Function(Project project)? deleted,
    TResult Function()? editingCancelled,
    TResult Function(Project project, String title, String abstract)?
        editingSaved,
  }) {
    return edited?.call(project);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project? project, String authorID)? fetched,
    TResult Function(Project project)? edited,
    TResult Function(Project project)? updated,
    TResult Function(Project project)? deleted,
    TResult Function()? editingCancelled,
    TResult Function(Project project, String title, String abstract)?
        editingSaved,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(project);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectFetched value) fetched,
    required TResult Function(_ProjectEdited value) edited,
    required TResult Function(_ProjectUpdated value) updated,
    required TResult Function(_ProjectDeleted value) deleted,
    required TResult Function(_ProjectEditingCancelled value) editingCancelled,
    required TResult Function(_ProjectEditingSaved value) editingSaved,
  }) {
    return edited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProjectFetched value)? fetched,
    TResult Function(_ProjectEdited value)? edited,
    TResult Function(_ProjectUpdated value)? updated,
    TResult Function(_ProjectDeleted value)? deleted,
    TResult Function(_ProjectEditingCancelled value)? editingCancelled,
    TResult Function(_ProjectEditingSaved value)? editingSaved,
  }) {
    return edited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectFetched value)? fetched,
    TResult Function(_ProjectEdited value)? edited,
    TResult Function(_ProjectUpdated value)? updated,
    TResult Function(_ProjectDeleted value)? deleted,
    TResult Function(_ProjectEditingCancelled value)? editingCancelled,
    TResult Function(_ProjectEditingSaved value)? editingSaved,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(this);
    }
    return orElse();
  }
}

abstract class _ProjectEdited implements ProjectEvent {
  const factory _ProjectEdited(final Project project) = _$_ProjectEdited;

  Project get project => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ProjectEditedCopyWith<_$_ProjectEdited> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProjectUpdatedCopyWith<$Res> {
  factory _$$_ProjectUpdatedCopyWith(
          _$_ProjectUpdated value, $Res Function(_$_ProjectUpdated) then) =
      __$$_ProjectUpdatedCopyWithImpl<$Res>;
  $Res call({Project project});

  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$_ProjectUpdatedCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res>
    implements _$$_ProjectUpdatedCopyWith<$Res> {
  __$$_ProjectUpdatedCopyWithImpl(
      _$_ProjectUpdated _value, $Res Function(_$_ProjectUpdated) _then)
      : super(_value, (v) => _then(v as _$_ProjectUpdated));

  @override
  _$_ProjectUpdated get _value => super._value as _$_ProjectUpdated;

  @override
  $Res call({
    Object? project = freezed,
  }) {
    return _then(_$_ProjectUpdated(
      project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
    ));
  }

  @override
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc

class _$_ProjectUpdated implements _ProjectUpdated {
  const _$_ProjectUpdated(this.project);

  @override
  final Project project;

  @override
  String toString() {
    return 'ProjectEvent.updated(project: $project)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectUpdated &&
            const DeepCollectionEquality().equals(other.project, project));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(project));

  @JsonKey(ignore: true)
  @override
  _$$_ProjectUpdatedCopyWith<_$_ProjectUpdated> get copyWith =>
      __$$_ProjectUpdatedCopyWithImpl<_$_ProjectUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project? project, String authorID) fetched,
    required TResult Function(Project project) edited,
    required TResult Function(Project project) updated,
    required TResult Function(Project project) deleted,
    required TResult Function() editingCancelled,
    required TResult Function(Project project, String title, String abstract)
        editingSaved,
  }) {
    return updated(project);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Project? project, String authorID)? fetched,
    TResult Function(Project project)? edited,
    TResult Function(Project project)? updated,
    TResult Function(Project project)? deleted,
    TResult Function()? editingCancelled,
    TResult Function(Project project, String title, String abstract)?
        editingSaved,
  }) {
    return updated?.call(project);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project? project, String authorID)? fetched,
    TResult Function(Project project)? edited,
    TResult Function(Project project)? updated,
    TResult Function(Project project)? deleted,
    TResult Function()? editingCancelled,
    TResult Function(Project project, String title, String abstract)?
        editingSaved,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(project);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectFetched value) fetched,
    required TResult Function(_ProjectEdited value) edited,
    required TResult Function(_ProjectUpdated value) updated,
    required TResult Function(_ProjectDeleted value) deleted,
    required TResult Function(_ProjectEditingCancelled value) editingCancelled,
    required TResult Function(_ProjectEditingSaved value) editingSaved,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProjectFetched value)? fetched,
    TResult Function(_ProjectEdited value)? edited,
    TResult Function(_ProjectUpdated value)? updated,
    TResult Function(_ProjectDeleted value)? deleted,
    TResult Function(_ProjectEditingCancelled value)? editingCancelled,
    TResult Function(_ProjectEditingSaved value)? editingSaved,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectFetched value)? fetched,
    TResult Function(_ProjectEdited value)? edited,
    TResult Function(_ProjectUpdated value)? updated,
    TResult Function(_ProjectDeleted value)? deleted,
    TResult Function(_ProjectEditingCancelled value)? editingCancelled,
    TResult Function(_ProjectEditingSaved value)? editingSaved,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _ProjectUpdated implements ProjectEvent {
  const factory _ProjectUpdated(final Project project) = _$_ProjectUpdated;

  Project get project => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ProjectUpdatedCopyWith<_$_ProjectUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProjectDeletedCopyWith<$Res> {
  factory _$$_ProjectDeletedCopyWith(
          _$_ProjectDeleted value, $Res Function(_$_ProjectDeleted) then) =
      __$$_ProjectDeletedCopyWithImpl<$Res>;
  $Res call({Project project});

  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$_ProjectDeletedCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res>
    implements _$$_ProjectDeletedCopyWith<$Res> {
  __$$_ProjectDeletedCopyWithImpl(
      _$_ProjectDeleted _value, $Res Function(_$_ProjectDeleted) _then)
      : super(_value, (v) => _then(v as _$_ProjectDeleted));

  @override
  _$_ProjectDeleted get _value => super._value as _$_ProjectDeleted;

  @override
  $Res call({
    Object? project = freezed,
  }) {
    return _then(_$_ProjectDeleted(
      project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
    ));
  }

  @override
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc

class _$_ProjectDeleted implements _ProjectDeleted {
  const _$_ProjectDeleted(this.project);

  @override
  final Project project;

  @override
  String toString() {
    return 'ProjectEvent.deleted(project: $project)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectDeleted &&
            const DeepCollectionEquality().equals(other.project, project));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(project));

  @JsonKey(ignore: true)
  @override
  _$$_ProjectDeletedCopyWith<_$_ProjectDeleted> get copyWith =>
      __$$_ProjectDeletedCopyWithImpl<_$_ProjectDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project? project, String authorID) fetched,
    required TResult Function(Project project) edited,
    required TResult Function(Project project) updated,
    required TResult Function(Project project) deleted,
    required TResult Function() editingCancelled,
    required TResult Function(Project project, String title, String abstract)
        editingSaved,
  }) {
    return deleted(project);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Project? project, String authorID)? fetched,
    TResult Function(Project project)? edited,
    TResult Function(Project project)? updated,
    TResult Function(Project project)? deleted,
    TResult Function()? editingCancelled,
    TResult Function(Project project, String title, String abstract)?
        editingSaved,
  }) {
    return deleted?.call(project);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project? project, String authorID)? fetched,
    TResult Function(Project project)? edited,
    TResult Function(Project project)? updated,
    TResult Function(Project project)? deleted,
    TResult Function()? editingCancelled,
    TResult Function(Project project, String title, String abstract)?
        editingSaved,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(project);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectFetched value) fetched,
    required TResult Function(_ProjectEdited value) edited,
    required TResult Function(_ProjectUpdated value) updated,
    required TResult Function(_ProjectDeleted value) deleted,
    required TResult Function(_ProjectEditingCancelled value) editingCancelled,
    required TResult Function(_ProjectEditingSaved value) editingSaved,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProjectFetched value)? fetched,
    TResult Function(_ProjectEdited value)? edited,
    TResult Function(_ProjectUpdated value)? updated,
    TResult Function(_ProjectDeleted value)? deleted,
    TResult Function(_ProjectEditingCancelled value)? editingCancelled,
    TResult Function(_ProjectEditingSaved value)? editingSaved,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectFetched value)? fetched,
    TResult Function(_ProjectEdited value)? edited,
    TResult Function(_ProjectUpdated value)? updated,
    TResult Function(_ProjectDeleted value)? deleted,
    TResult Function(_ProjectEditingCancelled value)? editingCancelled,
    TResult Function(_ProjectEditingSaved value)? editingSaved,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _ProjectDeleted implements ProjectEvent {
  const factory _ProjectDeleted(final Project project) = _$_ProjectDeleted;

  Project get project => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ProjectDeletedCopyWith<_$_ProjectDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProjectEditingCancelledCopyWith<$Res> {
  factory _$$_ProjectEditingCancelledCopyWith(_$_ProjectEditingCancelled value,
          $Res Function(_$_ProjectEditingCancelled) then) =
      __$$_ProjectEditingCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProjectEditingCancelledCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res>
    implements _$$_ProjectEditingCancelledCopyWith<$Res> {
  __$$_ProjectEditingCancelledCopyWithImpl(_$_ProjectEditingCancelled _value,
      $Res Function(_$_ProjectEditingCancelled) _then)
      : super(_value, (v) => _then(v as _$_ProjectEditingCancelled));

  @override
  _$_ProjectEditingCancelled get _value =>
      super._value as _$_ProjectEditingCancelled;
}

/// @nodoc

class _$_ProjectEditingCancelled implements _ProjectEditingCancelled {
  const _$_ProjectEditingCancelled();

  @override
  String toString() {
    return 'ProjectEvent.editingCancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectEditingCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project? project, String authorID) fetched,
    required TResult Function(Project project) edited,
    required TResult Function(Project project) updated,
    required TResult Function(Project project) deleted,
    required TResult Function() editingCancelled,
    required TResult Function(Project project, String title, String abstract)
        editingSaved,
  }) {
    return editingCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Project? project, String authorID)? fetched,
    TResult Function(Project project)? edited,
    TResult Function(Project project)? updated,
    TResult Function(Project project)? deleted,
    TResult Function()? editingCancelled,
    TResult Function(Project project, String title, String abstract)?
        editingSaved,
  }) {
    return editingCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project? project, String authorID)? fetched,
    TResult Function(Project project)? edited,
    TResult Function(Project project)? updated,
    TResult Function(Project project)? deleted,
    TResult Function()? editingCancelled,
    TResult Function(Project project, String title, String abstract)?
        editingSaved,
    required TResult orElse(),
  }) {
    if (editingCancelled != null) {
      return editingCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectFetched value) fetched,
    required TResult Function(_ProjectEdited value) edited,
    required TResult Function(_ProjectUpdated value) updated,
    required TResult Function(_ProjectDeleted value) deleted,
    required TResult Function(_ProjectEditingCancelled value) editingCancelled,
    required TResult Function(_ProjectEditingSaved value) editingSaved,
  }) {
    return editingCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProjectFetched value)? fetched,
    TResult Function(_ProjectEdited value)? edited,
    TResult Function(_ProjectUpdated value)? updated,
    TResult Function(_ProjectDeleted value)? deleted,
    TResult Function(_ProjectEditingCancelled value)? editingCancelled,
    TResult Function(_ProjectEditingSaved value)? editingSaved,
  }) {
    return editingCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectFetched value)? fetched,
    TResult Function(_ProjectEdited value)? edited,
    TResult Function(_ProjectUpdated value)? updated,
    TResult Function(_ProjectDeleted value)? deleted,
    TResult Function(_ProjectEditingCancelled value)? editingCancelled,
    TResult Function(_ProjectEditingSaved value)? editingSaved,
    required TResult orElse(),
  }) {
    if (editingCancelled != null) {
      return editingCancelled(this);
    }
    return orElse();
  }
}

abstract class _ProjectEditingCancelled implements ProjectEvent {
  const factory _ProjectEditingCancelled() = _$_ProjectEditingCancelled;
}

/// @nodoc
abstract class _$$_ProjectEditingSavedCopyWith<$Res> {
  factory _$$_ProjectEditingSavedCopyWith(_$_ProjectEditingSaved value,
          $Res Function(_$_ProjectEditingSaved) then) =
      __$$_ProjectEditingSavedCopyWithImpl<$Res>;
  $Res call({Project project, String title, String abstract});

  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$_ProjectEditingSavedCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res>
    implements _$$_ProjectEditingSavedCopyWith<$Res> {
  __$$_ProjectEditingSavedCopyWithImpl(_$_ProjectEditingSaved _value,
      $Res Function(_$_ProjectEditingSaved) _then)
      : super(_value, (v) => _then(v as _$_ProjectEditingSaved));

  @override
  _$_ProjectEditingSaved get _value => super._value as _$_ProjectEditingSaved;

  @override
  $Res call({
    Object? project = freezed,
    Object? title = freezed,
    Object? abstract = freezed,
  }) {
    return _then(_$_ProjectEditingSaved(
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      abstract: abstract == freezed
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc

class _$_ProjectEditingSaved implements _ProjectEditingSaved {
  const _$_ProjectEditingSaved(
      {required this.project, required this.title, required this.abstract});

  @override
  final Project project;
  @override
  final String title;
  @override
  final String abstract;

  @override
  String toString() {
    return 'ProjectEvent.editingSaved(project: $project, title: $title, abstract: $abstract)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectEditingSaved &&
            const DeepCollectionEquality().equals(other.project, project) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.abstract, abstract));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(project),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(abstract));

  @JsonKey(ignore: true)
  @override
  _$$_ProjectEditingSavedCopyWith<_$_ProjectEditingSaved> get copyWith =>
      __$$_ProjectEditingSavedCopyWithImpl<_$_ProjectEditingSaved>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Project? project, String authorID) fetched,
    required TResult Function(Project project) edited,
    required TResult Function(Project project) updated,
    required TResult Function(Project project) deleted,
    required TResult Function() editingCancelled,
    required TResult Function(Project project, String title, String abstract)
        editingSaved,
  }) {
    return editingSaved(project, title, abstract);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Project? project, String authorID)? fetched,
    TResult Function(Project project)? edited,
    TResult Function(Project project)? updated,
    TResult Function(Project project)? deleted,
    TResult Function()? editingCancelled,
    TResult Function(Project project, String title, String abstract)?
        editingSaved,
  }) {
    return editingSaved?.call(project, title, abstract);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Project? project, String authorID)? fetched,
    TResult Function(Project project)? edited,
    TResult Function(Project project)? updated,
    TResult Function(Project project)? deleted,
    TResult Function()? editingCancelled,
    TResult Function(Project project, String title, String abstract)?
        editingSaved,
    required TResult orElse(),
  }) {
    if (editingSaved != null) {
      return editingSaved(project, title, abstract);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectFetched value) fetched,
    required TResult Function(_ProjectEdited value) edited,
    required TResult Function(_ProjectUpdated value) updated,
    required TResult Function(_ProjectDeleted value) deleted,
    required TResult Function(_ProjectEditingCancelled value) editingCancelled,
    required TResult Function(_ProjectEditingSaved value) editingSaved,
  }) {
    return editingSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProjectFetched value)? fetched,
    TResult Function(_ProjectEdited value)? edited,
    TResult Function(_ProjectUpdated value)? updated,
    TResult Function(_ProjectDeleted value)? deleted,
    TResult Function(_ProjectEditingCancelled value)? editingCancelled,
    TResult Function(_ProjectEditingSaved value)? editingSaved,
  }) {
    return editingSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectFetched value)? fetched,
    TResult Function(_ProjectEdited value)? edited,
    TResult Function(_ProjectUpdated value)? updated,
    TResult Function(_ProjectDeleted value)? deleted,
    TResult Function(_ProjectEditingCancelled value)? editingCancelled,
    TResult Function(_ProjectEditingSaved value)? editingSaved,
    required TResult orElse(),
  }) {
    if (editingSaved != null) {
      return editingSaved(this);
    }
    return orElse();
  }
}

abstract class _ProjectEditingSaved implements ProjectEvent {
  const factory _ProjectEditingSaved(
      {required final Project project,
      required final String title,
      required final String abstract}) = _$_ProjectEditingSaved;

  Project get project => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get abstract => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ProjectEditingSavedCopyWith<_$_ProjectEditingSaved> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectState _$ProjectStateFromJson(Map<String, dynamic> json) {
  return _ProjectState.fromJson(json);
}

/// @nodoc
mixin _$ProjectState {
  ProjectStatus get status => throw _privateConstructorUsedError;
  Project? get project => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectStateCopyWith<ProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectStateCopyWith<$Res> {
  factory $ProjectStateCopyWith(
          ProjectState value, $Res Function(ProjectState) then) =
      _$ProjectStateCopyWithImpl<$Res>;
  $Res call({ProjectStatus status, Project? project});

  $ProjectCopyWith<$Res>? get project;
}

/// @nodoc
class _$ProjectStateCopyWithImpl<$Res> implements $ProjectStateCopyWith<$Res> {
  _$ProjectStateCopyWithImpl(this._value, this._then);

  final ProjectState _value;
  // ignore: unused_field
  final $Res Function(ProjectState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? project = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProjectStatus,
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project?,
    ));
  }

  @override
  $ProjectCopyWith<$Res>? get project {
    if (_value.project == null) {
      return null;
    }

    return $ProjectCopyWith<$Res>(_value.project!, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProjectStateCopyWith<$Res>
    implements $ProjectStateCopyWith<$Res> {
  factory _$$_ProjectStateCopyWith(
          _$_ProjectState value, $Res Function(_$_ProjectState) then) =
      __$$_ProjectStateCopyWithImpl<$Res>;
  @override
  $Res call({ProjectStatus status, Project? project});

  @override
  $ProjectCopyWith<$Res>? get project;
}

/// @nodoc
class __$$_ProjectStateCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res>
    implements _$$_ProjectStateCopyWith<$Res> {
  __$$_ProjectStateCopyWithImpl(
      _$_ProjectState _value, $Res Function(_$_ProjectState) _then)
      : super(_value, (v) => _then(v as _$_ProjectState));

  @override
  _$_ProjectState get _value => super._value as _$_ProjectState;

  @override
  $Res call({
    Object? status = freezed,
    Object? project = freezed,
  }) {
    return _then(_$_ProjectState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProjectStatus,
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectState implements _ProjectState {
  const _$_ProjectState({this.status = ProjectStatus.initial, this.project});

  factory _$_ProjectState.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectStateFromJson(json);

  @override
  @JsonKey()
  final ProjectStatus status;
  @override
  final Project? project;

  @override
  String toString() {
    return 'ProjectState(status: $status, project: $project)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.project, project));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(project));

  @JsonKey(ignore: true)
  @override
  _$$_ProjectStateCopyWith<_$_ProjectState> get copyWith =>
      __$$_ProjectStateCopyWithImpl<_$_ProjectState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectStateToJson(this);
  }
}

abstract class _ProjectState implements ProjectState {
  const factory _ProjectState(
      {final ProjectStatus status, final Project? project}) = _$_ProjectState;

  factory _ProjectState.fromJson(Map<String, dynamic> json) =
      _$_ProjectState.fromJson;

  @override
  ProjectStatus get status => throw _privateConstructorUsedError;
  @override
  Project? get project => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectStateCopyWith<_$_ProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}
