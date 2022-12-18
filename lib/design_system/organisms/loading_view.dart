import 'package:helpdesk/design_system/atoms/loading.dart';
import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({
    super.key,
    this.icon,
    this.message,
  });

  final IconData? icon;
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Loading(),
          if (message != null)
            Container(
              padding: const EdgeInsets.all(30.0),
              width: 450.0,
              child: Text(
                message!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    height:
                        1.2), // Reducing the space between lines for better legibility
              ),
            ),
        ],
      ),
    );
  }
}
