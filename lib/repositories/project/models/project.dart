// ignore_for_file: invalid_annotation_target

import 'package:firestore_datasource/firestore_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:scriptia/repositories/project/models/project_type.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class Project with _$Project {
  const Project._();

  @Implements<Entity>()
  factory Project({
    @JsonKey(ignore: true) String? id,
    required String authorID,
    required String title,
    String? abstract,
    required DateTime createdAt,
    DateTime? updatedAt,
    @Default(ProjectType.book) ProjectType type,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

  factory Project.sample() => Project(
      title: 'Sample Project',
      authorID: 'e537d946-ea44-11ec-8fea-0242ac120002',
      id: 'e537d946-ea44-11ec-8fea-0242ac120002',
      createdAt: DateTime(2022));

  static Project empty() {
    return Project(title: '', id: '', createdAt: DateTime.now(), authorID: '');
  }

  factory Project.fromDocument(DocumentSnapshot doc) {
    return Project(
      id: doc.id,
      authorID: doc['authorID'],
      title: doc['title'],
      abstract: doc['abstract'],
      type: $enumDecodeNullable(_$ProjectTypeEnumMap, doc['type']) ??
          ProjectType.book,
      createdAt: DateTime.parse(doc['createdAt'] as String),
      updatedAt: doc['updatedAt'] == null
          ? null
          : DateTime.parse(doc['updatedAt'] as String),
    );
  }
}
