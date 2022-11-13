import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkDownDescription extends StatelessWidget {
  const MarkDownDescription({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          border: Border(
              left: BorderSide(
        color: Theme.of(context).colorScheme.tertiaryContainer,
        width: 5.0,
      ))),
      child: MarkdownBody(
        data: description,
        selectable: true,
        styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)),
      ),
    );
  }
}
