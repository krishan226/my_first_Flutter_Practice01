import 'package:flutter/material.dart';

class NavigationStack2 extends StatelessWidget {
  const NavigationStack2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Stack 2'),
      ),
      body: Center(
        child: Text('This is Navigation Stack 2'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
