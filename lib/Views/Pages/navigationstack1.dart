import 'package:flutter/material.dart';
import 'package:my_first_flutter/Views/Pages/navigationsatack2.dart';

class NavigationStack1 extends StatefulWidget {
  const NavigationStack1({super.key});

  @override
  State<NavigationStack1> createState() => _NavigationStack1State();
}

class _NavigationStack1State extends State<NavigationStack1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Stack 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return NavigationStack2();
                    },
                  ),
                );
              },
              child: Text('Go to Navigation Stack 2'),
            ),
          ],
        ),
      ),
    );
  }
}
