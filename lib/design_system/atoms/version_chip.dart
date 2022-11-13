import 'package:flutter/material.dart';

class VersionChip extends StatelessWidget {
  const VersionChip({
    super.key,
    required this.version,
  });

  final String version;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        version,
      ),
      labelStyle: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer),
      labelPadding: EdgeInsets.zero,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      side: BorderSide.none,
    );
  }
}
