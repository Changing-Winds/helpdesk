import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helpdesk/repositories/issue_repository/models/models.dart';

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
    on<_CreateTicketApplicationChanged>(_onApplicationChanged);
    on<_CreateTicketDeviceChanged>(_onDeviceChanged);
  }

  FutureOr<void> _onStarted(event, Emitter<CreateTicketState> emit) {
    int currentStep = 1;
    Issue issue =
        Issue(authorID: 'authorID', title: '', createdAt: DateTime.now());
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
      List<Application> applications = Application.values
          .where((i) => i.product == event.product || i.product == Product.all)
          .toList();

      Issue issue = state.issue!
          .copyWith(product: event.product, application: applications.first);
      emit(state.copyWith(
        status: CreateTicketStatus.ready,
        issue: issue,
        currentStep: state.currentStep,
      ));
    }
  }

  FutureOr<void> _onApplicationChanged(
      _CreateTicketApplicationChanged event, Emitter<CreateTicketState> emit) {
    if (state.issue != null) {
      List<Device> devices = event.application.isMobileAppOnly
          ? Device.values.where((i) => i.isMobile == true).toList()
          : Device.values.map((e) => e).toList();

      Issue issue = state.issue!.copyWith(
        application: event.application,
        device: devices.first,
      );
      emit(state.copyWith(
        status: CreateTicketStatus.ready,
        issue: issue,
        currentStep: state.currentStep,
      ));
    }
  }

  FutureOr<void> _onDeviceChanged(
      _CreateTicketDeviceChanged event, Emitter<CreateTicketState> emit) {
    if (state.issue != null) {
      Issue issue = state.issue!.copyWith(device: event.device);
      emit(state.copyWith(
        status: CreateTicketStatus.ready,
        issue: issue,
        currentStep: state.currentStep,
      ));
    }
  }
}
