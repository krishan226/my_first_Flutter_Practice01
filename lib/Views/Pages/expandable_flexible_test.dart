import 'package:flutter/material.dart';

class ExpandedFlexibleTestPage extends StatelessWidget {
  const ExpandedFlexibleTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded and Flexible Widgets'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.teal,
            ),
          ),
        ],
      ),
    );
  }
}
