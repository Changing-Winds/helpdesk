import 'package:helpdesk/features/application/views/application.dart';
import 'package:helpdesk/utils/config.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Config config = Config();
  await config.init();

  runApp(HelpdeskApp(config: config));
}
