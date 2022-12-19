import 'package:flutter/material.dart';
import 'package:helpdesk/design_system/design_system.dart';

class EndOfListIndicator extends StatelessWidget {
  const EndOfListIndicator({
    Key? key,
    this.icon = '💪',
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kPadding * 3),
        child: Text(icon, style: Theme.of(context).textTheme.headlineLarge),
      ),
    );
  }
}
