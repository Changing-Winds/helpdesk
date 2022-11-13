import 'package:flutter/material.dart';

/// One node of a tree.
class TreeNode {
  TreeNode({
    this.key,
    this.children,
    Widget? content,
    this.explanation,
  }) : content = content ??
            const SizedBox(
              width: 0,
              height: 0,
            );

  final List<TreeNode>? children;
  final Widget content;
  final Widget? explanation;
  final Key? key;
}
