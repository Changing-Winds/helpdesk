import 'package:helpdesk/design_system/atoms/version_chip.dart';
import 'package:helpdesk/models/api_doc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ApiItem extends StatelessWidget {
  const ApiItem({
    super.key,
    required this.api,
  });

  final ApiDoc api;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            api.name,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: VersionChip(
              version: api.version,
            ),
          ),
          if (api.isPrivate) const Icon(Icons.lock_rounded),
        ],
      ),
      subtitle: api.description != null
          ? Text(
              api.description!,
              style: Theme.of(context).textTheme.bodyLarge,
            )
          : Container(),
      onTap: () {
        GoRouter.of(context).push('/api/${api.slug}');
      },
    );
  }
}
