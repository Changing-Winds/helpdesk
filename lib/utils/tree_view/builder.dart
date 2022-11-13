import 'package:flutter/material.dart';

import 'node_widget.dart';
import 'primitives/tree_controller.dart';
import 'primitives/tree_node.dart';

/// Builds set of [nodes] respecting [state], [indent] and [iconSize].
class TreeNodes extends StatelessWidget {
  const TreeNodes({
    super.key,
    required this.nodes,
    this.indent,
    required this.state,
    this.iconSize,
  });

  final List<TreeNode> nodes;
  final double? indent;
  final TreeController state;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var node in nodes)
          NodeWidget(
            treeNode: node,
            indent: indent,
            state: state,
            iconSize: iconSize,
          )
      ],
    );
  }
}
