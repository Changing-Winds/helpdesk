import 'package:helpdesk/design_system/constants.dart';
import 'package:flutter/material.dart';

class ErrorPanel extends StatelessWidget {
  const ErrorPanel({
    Key? key,
    required this.title,
    this.subtitle,
    this.icon = Icons.warning_rounded,
    this.isVisible = false,
  }) : super(key: key);

  final Widget title;
  final Widget? subtitle;
  final IconData icon;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    Widget child = isVisible
        ? _ErrorPanel(title: title, subtitle: subtitle, icon: icon)
        : _SpacerPanel();

    return child;
  }
}

class _SpacerPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}

class _ErrorPanel extends StatelessWidget {
  const _ErrorPanel({
    required this.title,
    this.subtitle,
    required this.icon,
  });

  final Widget title;
  final Widget? subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.symmetric(vertical: kPadding),
        color: Theme.of(context).colorScheme.surfaceVariant,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kPadding)),
        elevation: 24.0,
        child: ListTile(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          leading: Icon(
            icon,
            size: 40.0,
            color: Theme.of(context).colorScheme.error,
          ),
          title: title,
          subtitle: subtitle != null
              ? Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: subtitle,
                )
              : null,
        ));
  }
}
