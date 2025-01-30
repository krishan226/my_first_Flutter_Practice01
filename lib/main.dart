import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// StateFull  ---- Screen Can refresh state
// StateLess ---- Screen Cann't refresh state
// SetState ---- Screen to refresh state

String? title;

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
        child: MyHomePage(),
      ),
    );
  }
}

// Stateful widget
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// here
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // here we added the scafoold widget

    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? 'Default value'),
        centerTitle: true,
      ),
      body: currentIndex == 0
          ? Center(
              child: Text('1'),
            )
          : Center(
              child: Text('2'),
            ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Text('Menu'),
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Logout User'),
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
            label: 'Profile',
          ),
        ],
        onDestinationSelected: (int value) {
          print('Selected destination: $value');
          setState(() {
            currentIndex = value;
          });
        },
        selectedIndex: currentIndex,
      ),
    );
  }
}
