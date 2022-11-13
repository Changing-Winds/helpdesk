import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      strokeWidth: 5.0,
      valueColor:
          AlwaysStoppedAnimation(Theme.of(context).colorScheme.onSurface),
    );
  }
}
