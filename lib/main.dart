import 'package:firebase_core/firebase_core.dart';
import 'package:helpdesk/features/application/views/application.dart';
import 'package:helpdesk/firebase_options.dart';
import 'package:helpdesk/utils/config.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Config config = Config();
  await config.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(HelpdeskApp(config: config));
}
