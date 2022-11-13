// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApplicationState _$$_ApplicationStateFromJson(Map<String, dynamic> json) =>
    _$_ApplicationState(
      status: $enumDecodeNullable(_$ApplicationStatusEnumMap, json['status']) ??
          ApplicationStatus.loading,
    );

Map<String, dynamic> _$$_ApplicationStateToJson(_$_ApplicationState instance) =>
    <String, dynamic>{
      'status': _$ApplicationStatusEnumMap[instance.status]!,
    };

const _$ApplicationStatusEnumMap = {
  ApplicationStatus.loading: 'loading',
  ApplicationStatus.failed: 'failed',
  ApplicationStatus.ready: 'ready',
};
