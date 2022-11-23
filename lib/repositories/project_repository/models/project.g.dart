// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Project _$$_ProjectFromJson(Map<String, dynamic> json) => _$_Project(
      authorID: json['authorID'] as String,
      title: json['title'] as String,
      abstract: json['abstract'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      type: $enumDecodeNullable(_$ProjectTypeEnumMap, json['type']) ??
          ProjectType.book,
    );

Map<String, dynamic> _$$_ProjectToJson(_$_Project instance) =>
    <String, dynamic>{
      'authorID': instance.authorID,
      'title': instance.title,
      'abstract': instance.abstract,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'type': _$ProjectTypeEnumMap[instance.type]!,
    };

const _$ProjectTypeEnumMap = {
  ProjectType.book: 'book',
  ProjectType.play: 'play',
  ProjectType.script: 'script',
  ProjectType.paper: 'paper',
  ProjectType.other: 'other',
};
