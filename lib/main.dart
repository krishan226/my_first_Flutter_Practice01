import 'package:flutter/material.dart';
import 'package:my_first_flutter/Widgets/navbar_widget.dart';

void main() {
  runApp(const MyApp());
}

// ------  Start New Application
// StatefulWidget
// Material App (StateFull)
// Scaffold
// Nav Bar -- with title
//BottomNavigationbar

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.light,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My App',
          ),
        ),
        bottomNavigationBar: MyNavbarWidget(),
      ),
    );
  }
}
