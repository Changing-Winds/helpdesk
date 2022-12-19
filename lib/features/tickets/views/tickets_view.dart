import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:helpdesk/design_system/atoms/end_of_list_indicator.dart';
import 'package:helpdesk/features/tickets/bloc/tickets_bloc.dart';
import 'package:helpdesk/features/tickets/widgets/ticket_card.dart';

class TicketsView extends StatelessWidget {
  const TicketsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketsBloc, TicketsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text(
              L10nString.of(context).allOpenedTickets,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          body: ListView.builder(
              itemCount: state.tickets.length + 1,
              itemBuilder: (context, index) {
                return index >= state.tickets.length
                    ? state.tickets.length == state.totalItems
                        ? const EndOfListIndicator()
                        : Container()
                    : TicketCard(
                        ticket: state.tickets[index],
                        key: Key(state.tickets[index].id),
                      );
              }),
        );
      },
    );
  }
}
