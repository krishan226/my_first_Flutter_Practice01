import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// StatelessWidget
// Material App
// Scaffold

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter App'),
            centerTitle: true,
          ),
          drawer: Drawer(
            child: Column(
              children: [
                DrawerHeader(
                  child: Text('Menu'),
                ),
                ListTile(
                  leading: Icon(Icons.login),
                  title: Text('Logout'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.verified_user),
                  title: Text('user'),
                  onTap: () {},
                ),
              ],
            ),
          ),
          bottomNavigationBar: NavigationBar(
            destinations: [
              NavigationDestination(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.person),
                label: 'Home',
              ),
            ],
            onDestinationSelected: (int value) {
              print('Selected destination: $value');
            },
            selectedIndex: 0,
          ),
        ),
      ),
    );
  }
}
