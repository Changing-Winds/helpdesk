part of 'ticket_bloc.dart';

@freezed
class TicketEvent with _$TicketEvent {
  const factory TicketEvent.fetched() = _TicketFetched;
  const factory TicketEvent.updated(Ticket ticket) = _TicketUpdated;
  const factory TicketEvent.commentUrlCopied({
    required String commentSlug,
  }) = _TicketCommentUrlCopied;
}
