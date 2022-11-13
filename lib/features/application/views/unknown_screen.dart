import 'package:helpdesk/design_system/design_system.dart';
import 'package:flutter/material.dart';

class UnknownScreen extends StatelessWidget {
  const UnknownScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HelpdeskPage.error(
      errorTitle: 'Unknown Page',
      errorExplanation: '404: Not Found',
    );
  }
}
