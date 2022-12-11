import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helpdesk/repositories/issue_repository/models/issue.dart';
import 'package:helpdesk/repositories/issue_repository/models/product.dart';

part 'create_ticket_event.dart';
part 'create_ticket_bloc.g.dart';
part 'create_ticket_state.dart';
part 'create_ticket_bloc.freezed.dart';

class CreateTicketBloc extends Bloc<CreateTicketEvent, CreateTicketState> {
  CreateTicketBloc() : super(const CreateTicketState()) {
    on<_CreateTicketStarted>(_onStarted);
    on<_CreateTicketNextStepRequested>(_onNextStepRequested);
    on<_CreateTicketFeatureStepSaved>(_onFeatureStepSaved);
    on<_CreateTicketProductChanged>(_onProductChanged);
  }

  FutureOr<void> _onStarted(event, Emitter<CreateTicketState> emit) {
    int currentStep = 1;
    Issue issue =
        Issue(authorID: 'authorID', title: '', createdAt: DateTime.now());
    print(issue);
    emit(state.copyWith(
      status: CreateTicketStatus.ready,
      issue: issue,
      currentStep: currentStep,
    ));
  }

  FutureOr<void> _onNextStepRequested(event, Emitter<CreateTicketState> emit) {
    int currentStep = state.currentStep + 1;
    emit(state.copyWith(
      status: CreateTicketStatus.ready,
      currentStep: currentStep,
    ));
  }

  FutureOr<void> _onFeatureStepSaved(event, Emitter<CreateTicketState> emit) {}

  FutureOr<void> _onProductChanged(
      _CreateTicketProductChanged event, Emitter<CreateTicketState> emit) {
    if (state.issue != null) {
      Issue issue = state.issue!.copyWith(product: event.product);
      print(issue);
      emit(state.copyWith(
        status: CreateTicketStatus.ready,
        issue: issue,
        currentStep: state.currentStep,
      ));
    }
  }
}
