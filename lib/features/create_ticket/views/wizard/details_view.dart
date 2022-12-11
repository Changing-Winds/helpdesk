import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:helpdesk/design_system/design_system.dart';

class DetailsWizardView extends StatelessWidget {
  const DetailsWizardView({
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
            "Details",
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
