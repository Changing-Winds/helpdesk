// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectState _$$_ProjectStateFromJson(Map<String, dynamic> json) =>
    _$_ProjectState(
      status: $enumDecodeNullable(_$ProjectStatusEnumMap, json['status']) ??
          ProjectStatus.initial,
      project: json['project'] == null
          ? null
          : Project.fromJson(json['project'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProjectStateToJson(_$_ProjectState instance) =>
    <String, dynamic>{
      'status': _$ProjectStatusEnumMap[instance.status],
      'project': instance.project,
    };

const _$ProjectStatusEnumMap = {
  ProjectStatus.initial: 'initial',
  ProjectStatus.loading: 'loading',
  ProjectStatus.editing: 'editing',
  ProjectStatus.updated: 'updated',
  ProjectStatus.ready: 'ready',
  ProjectStatus.failure: 'failure',
};
