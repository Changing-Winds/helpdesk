import 'package:flutter/material.dart';

enum Criticity {
  minor(1, 'Yellow', Colors.yellow),
  medium(2, 'Orange', Colors.orange),
  major(3, 'Red', Colors.red),
  critical(4, 'Black', Colors.black);

  final int level;
  final String name;
  final Color color;

  const Criticity(this.level, this.name, this.color);
  @override
  String toString() => 'Criticity($level, $name, $color)';
}
