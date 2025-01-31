import 'package:flutter/material.dart';
import 'package:my_first_flutter/data/notifiers.dart';

class MyNavbarWidget extends StatefulWidget {
  const MyNavbarWidget({super.key});

  @override
  State<MyNavbarWidget> createState() => _MyNavbarWidgetState();
}

class _MyNavbarWidgetState extends State<MyNavbarWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected: (value) {
            setState(() {
              selectedPageNotifier.value = value;
            });
          },
          selectedIndex: selectedPage,
        );
      },
    );
  }
}
