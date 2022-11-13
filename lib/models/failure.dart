import 'package:flutter/foundation.dart';

abstract class Failure {
  Failure({this.properties = const [], this.cause = 'Not available'});
  final List<Object> properties;
  @mustCallSuper
  final String cause;

  @override
  String toString() {
    return runtimeType.toString();
  }
}
