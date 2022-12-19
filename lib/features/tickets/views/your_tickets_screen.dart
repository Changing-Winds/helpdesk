import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:helpdesk/features/tickets/bloc/tickets_bloc.dart';
import 'package:helpdesk/features/tickets/views/your_tickets_view.dart';

class YourTicketsScreen extends StatelessWidget {
  const YourTicketsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TicketsBloc()..add(const TicketsEvent.fetched()),
      child: const YourTicketsView(),
    );
  }
}
