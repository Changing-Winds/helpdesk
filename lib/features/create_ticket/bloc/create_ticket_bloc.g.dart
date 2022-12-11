// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ticket_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateTicketState _$$_CreateTicketStateFromJson(Map<String, dynamic> json) =>
    _$_CreateTicketState(
      status:
          $enumDecodeNullable(_$CreateTicketStatusEnumMap, json['status']) ??
              CreateTicketStatus.ready,
    );

Map<String, dynamic> _$$_CreateTicketStateToJson(
        _$_CreateTicketState instance) =>
    <String, dynamic>{
      'status': _$CreateTicketStatusEnumMap[instance.status]!,
    };

const _$CreateTicketStatusEnumMap = {
  CreateTicketStatus.loading: 'loading',
  CreateTicketStatus.saving: 'saving',
  CreateTicketStatus.error: 'error',
  CreateTicketStatus.ready: 'ready',
};
