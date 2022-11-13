import 'package:flutter/material.dart';

typedef MenuItemVoidCallback = void Function(String);

class ContextMenuItem extends StatelessWidget {
  const ContextMenuItem({
    super.key,
    required this.label,
    this.icon,
  });

  final String label;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Icon(icon),
        ),
        Expanded(
          child: Text(label, style: Theme.of(context).textTheme.labelLarge),
        ),
      ],
    );
  }
}
