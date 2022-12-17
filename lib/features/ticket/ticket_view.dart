// import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "Ticket Screen",
      style: Theme.of(context).textTheme.displayMedium,
    ));
  }
}
