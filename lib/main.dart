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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
          centerTitle: true,
          leading: Icon(Icons.login),
          actions: [
            Icon(Icons.search),
            Icon(Icons.notifications),
            Icon(Icons.more_vert),
            Text('Click')
          ],
          backgroundColor: Colors.teal,
        ),
      ),
    );
  }
}
