class Ticket {
  Ticket({
    required this.id,
    required this.title,
    this.description,
    this.status = TicketStatus.draft,
  });

  final String id;
  final String title;
  final String? description;
  final TicketStatus status;
}

enum TicketStatus { draft, submitted, inProgress, resolved, closed }
