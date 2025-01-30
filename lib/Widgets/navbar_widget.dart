import 'package:flutter/material.dart';

class MyNavbarWidget extends StatefulWidget {
  const MyNavbarWidget({super.key});

  @override
  State<MyNavbarWidget> createState() => _MyNavbarWidgetState();
}

class _MyNavbarWidgetState extends State<MyNavbarWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
      ],
      onDestinationSelected: (value) {
        setState(() {
          selectedIndex = value;
        });
      },
      selectedIndex: selectedIndex,
    );
  }
}
