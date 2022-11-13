import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    super.key,
    this.icon,
    this.errorTitle,
    this.errorExplanation,
  });

  final IconData? icon;
  final String? errorTitle;
  final String? errorExplanation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon ?? Icons.error_outline_rounded,
            size: 64.0,
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            width: 400.0,
            child: Text(
              errorTitle ?? 'An unknown error\nhas occurred',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(height: 1.2),
            ),
          ),
          if (errorExplanation != null)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              width: 400.0,
              child: Text(
                'Reason: $errorExplanation',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            )
        ],
      ),
    );
  }
}
