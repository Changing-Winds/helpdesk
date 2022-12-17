// ignore_for_file: invalid_annotation_target

part of 'ticket_bloc.dart';

enum TicketStatus {
  initial,
  loading,
  ready,
  updated,
  failure;

  bool get isInitial => this == TicketStatus.initial;
  bool get isLoading => this == TicketStatus.loading;
  bool get isReady => this == TicketStatus.ready;
  bool get isUpdated => this == TicketStatus.updated;
  bool get isFailure => this == TicketStatus.failure;
}

@freezed
class TicketState with _$TicketState {
  const factory TicketState({
    @Default(TicketStatus.initial) TicketStatus status,
    @JsonKey(ignore: true) Ticket? ticket,
    @JsonKey(ignore: true) Failure? failure,
  }) = _TicketState;

  factory TicketState.fromJson(Map<String, dynamic> json) =>
      _$TicketStateFromJson(json);
}
