class Ticket {
  Ticket({
    required this.id,
    required this.title,
    required this.owner,
    this.description,
    this.status = TicketStatus.draft,
  });

  final String id;
  final String title;
  final String owner;
  final String? description;
  final TicketStatus status;
}

enum TicketStatus { draft, submitted, inProgress, resolved, closed }
