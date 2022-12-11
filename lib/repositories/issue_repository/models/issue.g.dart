// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Issue _$$_IssueFromJson(Map<String, dynamic> json) => _$_Issue(
      authorID: json['authorID'] as String,
      title: json['title'] as String,
      abstract: json['abstract'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      criticity: $enumDecodeNullable(_$CriticityEnumMap, json['criticity']) ??
          Criticity.minor,
      product: $enumDecodeNullable(_$ProductEnumMap, json['product']) ??
          Product.flatguide,
    );

Map<String, dynamic> _$$_IssueToJson(_$_Issue instance) => <String, dynamic>{
      'authorID': instance.authorID,
      'title': instance.title,
      'abstract': instance.abstract,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'criticity': _$CriticityEnumMap[instance.criticity]!,
      'product': _$ProductEnumMap[instance.product]!,
    };

const _$CriticityEnumMap = {
  Criticity.minor: 'minor',
  Criticity.medium: 'medium',
  Criticity.major: 'major',
  Criticity.critical: 'critical',
};

const _$ProductEnumMap = {
  Product.flatguide: 'flatguide',
  Product.saas: 'saas',
};
