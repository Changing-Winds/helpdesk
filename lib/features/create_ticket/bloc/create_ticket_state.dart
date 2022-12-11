// ignore_for_file: invalid_annotation_target

part of 'create_ticket_bloc.dart';

enum CreateTicketStatus {
  loading,
  saving,
  error,
  ready;

  bool get isLoading => this == CreateTicketStatus.loading;
  bool get isReady => this == CreateTicketStatus.ready;
  bool get isSaving => this == CreateTicketStatus.saving;
  bool get isError => this == CreateTicketStatus.error;
}

@freezed
class CreateTicketState with _$CreateTicketState {
  const factory CreateTicketState({
    @Default(CreateTicketStatus.ready) CreateTicketStatus status,
    @JsonKey(ignore: true) @Default(1) int currentStep,
  }) = _CreateTicketState;

  factory CreateTicketState.fromJson(Map<String, dynamic> json) =>
      _$CreateTicketStateFromJson(json);
}
