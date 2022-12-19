// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickets_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketsState _$$_TicketsStateFromJson(Map<String, dynamic> json) =>
    _$_TicketsState(
      status: $enumDecodeNullable(_$TicketsStatusEnumMap, json['status']) ??
          TicketsStatus.initial,
    );

Map<String, dynamic> _$$_TicketsStateToJson(_$_TicketsState instance) =>
    <String, dynamic>{
      'status': _$TicketsStatusEnumMap[instance.status]!,
    };

const _$TicketsStatusEnumMap = {
  TicketsStatus.initial: 'initial',
  TicketsStatus.loading: 'loading',
  TicketsStatus.editing: 'editing',
  TicketsStatus.updated: 'updated',
  TicketsStatus.ready: 'ready',
  TicketsStatus.failure: 'failure',
};
