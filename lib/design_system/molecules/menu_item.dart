import 'package:flutter/material.dart';

typedef MenuItemVoidCallback = void Function(String);

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.label,
    this.icon,
  });

  final String label;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(icon),
        ),
        Text(label),
      ],
    );
  }
}
