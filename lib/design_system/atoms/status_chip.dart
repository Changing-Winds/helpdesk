import 'package:helpdesk/models/models.dart';
import 'package:flutter/material.dart';

class StatusChip extends StatelessWidget {
  const StatusChip({
    super.key,
    required this.status,
  });

  final TicketStatus status;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        status.name,
      ),
      labelStyle: Theme.of(context).textTheme.bodyLarge,
      labelPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      // side: BorderSide.none,
    );
  }
}
