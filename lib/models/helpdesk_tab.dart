import 'package:flutter/material.dart';

class HelpdeskTab {
  const HelpdeskTab({
    required this.title,
    required this.icon,
    required this.screen,
  });
  final String title;
  final IconData icon;
  final Widget screen;

  NavigationRailDestination get destination => NavigationRailDestination(
        icon: Icon(icon),
        label: Text(title),
      );
}
