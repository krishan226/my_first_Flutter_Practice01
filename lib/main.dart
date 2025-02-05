import 'package:flutter/material.dart';
import 'package:my_first_flutter/Views/Pages/welcomepage.dart';
import 'package:my_first_flutter/data/constants.dart';
import 'package:my_first_flutter/data/notifiers.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    setUpTheme();
    super.initState();
  }

  void setUpTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? repeat = prefs.getBool(KConstants.isDarkModeKey);
    isDarkModeNotifier.value = repeat ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkModeValue, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: isDarkModeValue ? Brightness.dark : Brightness.light,
            ),
          ),
          // home: WidgetTree(),
          home: WelcomePage(),
        );
      },
    );
  }
}
