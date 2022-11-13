import 'package:flutter/material.dart';

class VersionSelector extends StatelessWidget {
  const VersionSelector({
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
      labelStyle: Theme.of(context).textTheme.bodyMedium,
      labelPadding: EdgeInsets.zero,
      // backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      // side: BorderSide.none,
    );
  }
}
