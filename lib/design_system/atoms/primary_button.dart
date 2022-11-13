import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.isLoading = false,
  }) : super(key: key);

  final Widget child;
  final VoidCallback? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    Widget content = isLoading ? const Text('loadingButton') : child;

    return ElevatedButton(
      onPressed: onPressed,
      child: content,
    );
  }
}
