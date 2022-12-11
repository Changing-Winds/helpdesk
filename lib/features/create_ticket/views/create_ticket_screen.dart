import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:helpdesk/features/create_ticket/bloc/create_ticket_bloc.dart';
import 'package:helpdesk/features/create_ticket/views/create_ticket_view.dart';

class CreateTicketScreen extends StatelessWidget {
  const CreateTicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CreateTicketBloc()..add(const CreateTicketEvent.started()),
      child: const CreateTicketView(),
    );
  }
}
