part of 'create_ticket_bloc.dart';

@freezed
class CreateTicketEvent with _$CreateTicketEvent {
  const factory CreateTicketEvent.started() = _CreateTicketStarted;
  const factory CreateTicketEvent.nextStepRequested() =
      _CreateTicketNextStepRequested;
  const factory CreateTicketEvent.featureStepSaved() =
      _CreateTicketFeatureStepSaved;
  const factory CreateTicketEvent.productChanged(Product product) =
      _CreateTicketProductChanged;
  const factory CreateTicketEvent.applicationChanged(Application application) =
      _CreateTicketApplicationChanged;
  const factory CreateTicketEvent.deviceChanged(Device device) =
      _CreateTicketDeviceChanged;
}
