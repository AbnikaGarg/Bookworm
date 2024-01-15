// import 'package:flutter/material.dart';

// class TreeNode {
//   String label;
//   List<TreeNode> children;

//   TreeNode(this.label, [this.children = const <TreeNode>[]]);
// }

// class TreeView extends StatelessWidget {
//   final List<TreeNode> nodes;

//   TreeView(this.nodes);

//   Widget _buildNode(TreeNode node) {
//     return ListTile(
//       title: Text(node.label),
//       onTap: () {
//         // Handle node tap if needed
//       },
//       // Add more styling or customize as per your requirements
//     );
//   }

//   Widget _buildTree(List<TreeNode> nodes) {
//     return ExpansionTile(
//       key: PageStorageKey<TreeNode>(nodes.first),
//       title: Text(nodes.first.label),
//       children: nodes.first.children.map<Widget>(_buildNode).toList(),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemBuilder: (BuildContext context, int index) =>
//           _buildTree([nodes[index]]),
//       itemCount: nodes.length,
//     );
//   }
// }

// // void main() {
// //   runApp(
// //     MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text('Tree View Example'),
// //         ),
// //         body: TreeView(
// //           [
// //             TreeNode('Node 1', [
// //               TreeNode('Node 1.1'),
// //               TreeNode('Node 1.2', [
// //                 TreeNode('Node 1.2.1'),
// //                 TreeNode('Node 1.2.2'),
// //               ]),
// //             ]),
// //             TreeNode('Node 2'),
// //             TreeNode('Node 3', [
// //               TreeNode('Node 3.1'),
// //               TreeNode('Node 3.2'),
// //             ]),
// //           ],
// //         ),
    
// //       ),
// //     ),
// //   );
// // }
