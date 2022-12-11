import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_ticket_event.dart';
part 'create_ticket_bloc.g.dart';
part 'create_ticket_state.dart';
part 'create_ticket_bloc.freezed.dart';

class CreateTicketBloc extends Bloc<CreateTicketEvent, CreateTicketState> {
  CreateTicketBloc() : super(const CreateTicketState()) {
    on<_CreateTicketStarted>(_onStarted);
    on<_CreateTicketNextStepRequested>(_onNextStepRequested);
    on<_CreateTicketFeatureStepSaved>(_onFeatureStepSaved);
  }

  FutureOr<void> _onStarted(event, Emitter<CreateTicketState> emit) {}

  FutureOr<void> _onNextStepRequested(event, Emitter<CreateTicketState> emit) {
    int currentStep = state.currentStep + 1;
    emit(state.copyWith(
      status: CreateTicketStatus.ready,
      currentStep: currentStep,
    ));
  }

  FutureOr<void> _onFeatureStepSaved(event, Emitter<CreateTicketState> emit) {}
}
