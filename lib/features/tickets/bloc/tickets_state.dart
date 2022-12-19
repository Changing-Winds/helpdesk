// ignore_for_file: invalid_annotation_target

part of 'tickets_bloc.dart';

enum TicketsStatus {
  initial,
  loading,
  editing,
  updated,
  ready,
  failure;

  bool get isInitial => this == TicketsStatus.initial;
  bool get isLoading => this == TicketsStatus.loading;
  bool get isUpdated => this == TicketsStatus.updated;
  bool get isReady => this == TicketsStatus.ready;
  bool get isFailure => this == TicketsStatus.failure;
}

@freezed
class TicketsState with _$TicketsState {
  const factory TicketsState({
    @Default(TicketsStatus.initial) TicketsStatus status,
    @JsonKey(ignore: true) @Default([]) List<Ticket> tickets,
    @JsonKey(ignore: true) @Default(0) int totalItems,
  }) = _TicketsState;

  factory TicketsState.fromJson(Map<String, dynamic> json) =>
      _$TicketsStateFromJson(json);
}
