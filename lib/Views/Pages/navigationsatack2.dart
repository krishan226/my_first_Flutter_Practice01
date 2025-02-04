import 'package:flutter/material.dart';
import 'package:my_first_flutter/Views/Pages/welcomepage.dart';

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
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
            builder: (context) {
              return WelcomePage();
            },
          ), (route) => false);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
