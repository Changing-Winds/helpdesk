import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helpdesk/design_system/atoms/primary_button.dart';
import 'package:helpdesk/design_system/constants.dart';
import 'package:helpdesk/features/authentication/authentication.dart';
import 'package:helpdesk/repositories/ticket_repository/models/ticket.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({
    Key? key,
    required this.ticket,
  }) : super(key: key);

  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, authState) {
        return Card(
          elevation: 10.0,
          child: Padding(
            padding: const EdgeInsets.all(kPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ticket ID# ${ticket.id}",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  ticket.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(ticket.description ?? ''),
                if (authState.user!.id == ticket.owner)
                  PrimaryButton(
                    child: const Text("Edit"),
                    onPressed: () {},
                  )
              ],
            ),
          ),
        );
      },
    );
  }
}
