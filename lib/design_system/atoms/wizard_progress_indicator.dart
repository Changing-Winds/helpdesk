import 'package:flutter/material.dart';

class WizardProgressionIndicator extends StatelessWidget {
  const WizardProgressionIndicator(
      {Key? key,
      this.isDark = false,
      this.isCompact = false,
      required this.totalSteps,
      required this.currentStep})
      : super(key: key);

  final bool isDark;
  final bool isCompact;
  final int totalSteps;
  final int currentStep;

  @override
  Widget build(BuildContext context) {
    double currentProgression = currentStep / totalSteps;

    return Material(
      elevation: 2,
      child: SizedBox(
        width: double.infinity,
        height: isCompact ? 10.0 : 20.0,
        child: Stack(
          children: [
            Container(
                color: Theme.of(context)
                    .colorScheme
                    .surfaceVariant
                    .withOpacity(0.5)),
            FractionallySizedBox(
              widthFactor: currentProgression,
              child: AnimatedContainer(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.8),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                duration: const Duration(seconds: 1),
                // width: constraints.maxWidth * currentProgression,
                height: isCompact ? 15.0 : 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
