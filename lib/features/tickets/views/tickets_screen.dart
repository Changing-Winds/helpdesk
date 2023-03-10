import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:helpdesk/features/tickets/bloc/tickets_bloc.dart';
import 'package:helpdesk/features/tickets/views/tickets_view.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TicketsBloc()..add(const TicketsEvent.fetched()),
      child: const TicketsView(),
    );
  }
}
