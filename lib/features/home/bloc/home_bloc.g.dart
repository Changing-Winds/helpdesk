// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeState _$$_HomeStateFromJson(Map<String, dynamic> json) => _$_HomeState(
      status: $enumDecodeNullable(_$HomeStatusEnumMap, json['status']) ??
          HomeStatus.ready,
    );

Map<String, dynamic> _$$_HomeStateToJson(_$_HomeState instance) =>
    <String, dynamic>{
      'status': _$HomeStatusEnumMap[instance.status]!,
    };

const _$HomeStatusEnumMap = {
  HomeStatus.loading: 'loading',
  HomeStatus.ready: 'ready',
};
