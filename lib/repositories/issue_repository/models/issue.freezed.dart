// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Issue _$IssueFromJson(Map<String, dynamic> json) {
  return _Issue.fromJson(json);
}

/// @nodoc
mixin _$Issue {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get authorID => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get abstract => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Criticity get criticity => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;
  Application get application => throw _privateConstructorUsedError;
  Device get device => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IssueCopyWith<Issue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueCopyWith<$Res> {
  factory $IssueCopyWith(Issue value, $Res Function(Issue) then) =
      _$IssueCopyWithImpl<$Res, Issue>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String authorID,
      String title,
      String? abstract,
      DateTime createdAt,
      DateTime? updatedAt,
      Criticity criticity,
      Product product,
      Application application,
      Device device});
}

/// @nodoc
class _$IssueCopyWithImpl<$Res, $Val extends Issue>
    implements $IssueCopyWith<$Res> {
  _$IssueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? authorID = null,
    Object? title = null,
    Object? abstract = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? criticity = null,
    Object? product = null,
    Object? application = null,
    Object? device = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      authorID: null == authorID
          ? _value.authorID
          : authorID // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      abstract: freezed == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      criticity: null == criticity
          ? _value.criticity
          : criticity // ignore: cast_nullable_to_non_nullable
              as Criticity,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      application: null == application
          ? _value.application
          : application // ignore: cast_nullable_to_non_nullable
              as Application,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IssueCopyWith<$Res> implements $IssueCopyWith<$Res> {
  factory _$$_IssueCopyWith(_$_Issue value, $Res Function(_$_Issue) then) =
      __$$_IssueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String authorID,
      String title,
      String? abstract,
      DateTime createdAt,
      DateTime? updatedAt,
      Criticity criticity,
      Product product,
      Application application,
      Device device});
}

/// @nodoc
class __$$_IssueCopyWithImpl<$Res> extends _$IssueCopyWithImpl<$Res, _$_Issue>
    implements _$$_IssueCopyWith<$Res> {
  __$$_IssueCopyWithImpl(_$_Issue _value, $Res Function(_$_Issue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? authorID = null,
    Object? title = null,
    Object? abstract = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? criticity = null,
    Object? product = null,
    Object? application = null,
    Object? device = null,
  }) {
    return _then(_$_Issue(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      authorID: null == authorID
          ? _value.authorID
          : authorID // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      abstract: freezed == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      criticity: null == criticity
          ? _value.criticity
          : criticity // ignore: cast_nullable_to_non_nullable
              as Criticity,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      application: null == application
          ? _value.application
          : application // ignore: cast_nullable_to_non_nullable
              as Application,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Issue extends _Issue {
  _$_Issue(
      {@JsonKey(ignore: true) this.id,
      required this.authorID,
      required this.title,
      this.abstract,
      required this.createdAt,
      this.updatedAt,
      this.criticity = Criticity.minor,
      this.product = Product.flatguide,
      this.application = Application.adminApp,
      this.device = Device.windowsDekstop})
      : super._();

  factory _$_Issue.fromJson(Map<String, dynamic> json) =>
      _$$_IssueFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String authorID;
  @override
  final String title;
  @override
  final String? abstract;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final Criticity criticity;
  @override
  @JsonKey()
  final Product product;
  @override
  @JsonKey()
  final Application application;
  @override
  @JsonKey()
  final Device device;

  @override
  String toString() {
    return 'Issue(id: $id, authorID: $authorID, title: $title, abstract: $abstract, createdAt: $createdAt, updatedAt: $updatedAt, criticity: $criticity, product: $product, application: $application, device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Issue &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorID, authorID) ||
                other.authorID == authorID) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.abstract, abstract) ||
                other.abstract == abstract) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.criticity, criticity) ||
                other.criticity == criticity) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.application, application) ||
                other.application == application) &&
            (identical(other.device, device) || other.device == device));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, authorID, title, abstract,
      createdAt, updatedAt, criticity, product, application, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IssueCopyWith<_$_Issue> get copyWith =>
      __$$_IssueCopyWithImpl<_$_Issue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IssueToJson(
      this,
    );
  }
}

abstract class _Issue extends Issue implements Entity {
  factory _Issue(
      {@JsonKey(ignore: true) final String? id,
      required final String authorID,
      required final String title,
      final String? abstract,
      required final DateTime createdAt,
      final DateTime? updatedAt,
      final Criticity criticity,
      final Product product,
      final Application application,
      final Device device}) = _$_Issue;
  _Issue._() : super._();

  factory _Issue.fromJson(Map<String, dynamic> json) = _$_Issue.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get authorID;
  @override
  String get title;
  @override
  String? get abstract;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  Criticity get criticity;
  @override
  Product get product;
  @override
  Application get application;
  @override
  Device get device;
  @override
  @JsonKey(ignore: true)
  _$$_IssueCopyWith<_$_Issue> get copyWith =>
      throw _privateConstructorUsedError;
}
