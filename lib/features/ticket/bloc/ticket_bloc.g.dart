// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketState _$$_TicketStateFromJson(Map<String, dynamic> json) =>
    _$_TicketState(
      status: $enumDecodeNullable(_$TicketStatusEnumMap, json['status']) ??
          TicketStatus.initial,
    );

Map<String, dynamic> _$$_TicketStateToJson(_$_TicketState instance) =>
    <String, dynamic>{
      'status': _$TicketStatusEnumMap[instance.status]!,
    };

const _$TicketStatusEnumMap = {
  TicketStatus.initial: 'initial',
  TicketStatus.loading: 'loading',
  TicketStatus.ready: 'ready',
  TicketStatus.updated: 'updated',
  TicketStatus.failure: 'failure',
};
