import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:helpdesk/design_system/design_system.dart';

class DoneWizardView extends StatelessWidget {
  const DoneWizardView({
    super.key,
    required this.onNextButtonTapped,
  });

  final VoidCallback onNextButtonTapped;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Done",
            // L10nString.of(context).newTicket,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          PrimaryButton(
            onPressed: onNextButtonTapped,
            child: const Text('Next'),
          )
        ],
      ),
    );
  }
}
