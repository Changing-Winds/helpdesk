import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter/material.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      L10nString.of(context).allOpenedTickets,
      style: Theme.of(context).textTheme.displayMedium,
    ));
  }
}