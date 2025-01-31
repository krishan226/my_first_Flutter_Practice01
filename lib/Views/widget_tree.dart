import 'package:flutter/material.dart';
import 'package:my_first_flutter/Views/Pages/homePage.dart';
import 'package:my_first_flutter/Views/Pages/profilePage.dart';
import 'package:my_first_flutter/data/notifiers.dart';
import '../Views/Widgets/navbar_widget.dart';

List<Widget> pages = [
  HomePage(),
  ProfilePage(),
];

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My App',
        ),
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDark, child) {
                return Icon(
                  isDark ? Icons.light_mode : Icons.dark_mode,
                );
              },
            ),
          )
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, value, child) {
          return pages.elementAt(value);
        },
      ),
      bottomNavigationBar: MyNavbarWidget(),
    );
  }
}
