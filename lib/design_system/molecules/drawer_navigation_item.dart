import 'package:flutter/material.dart';
import 'package:helpdesk/design_system/molecules/context_menu_item.dart';
import 'package:helpdesk/models/models.dart';

class DrawerNavigationItem extends StatelessWidget {
  const DrawerNavigationItem({
    super.key,
    required this.item,
  });
  final DrawerItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ContextMenuItem(
        label: item.title,
        icon: item.icon,
      ),
    );
  }
}
