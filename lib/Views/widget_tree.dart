import 'package:flutter/material.dart';
import 'package:my_first_flutter/Views/Pages/homePage.dart';
import 'package:my_first_flutter/Views/Pages/profile_page.dart';
import 'package:my_first_flutter/Views/Pages/settings_page.dart';
import 'package:my_first_flutter/data/constants.dart';
import 'package:my_first_flutter/data/notifiers.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
            onPressed: () async {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              await prefs.setBool(
                  KConstants.isDarkModeKey, isDarkModeNotifier.value);
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkValue, child) {
                print('device theme is: $isDarkValue');
                return Icon(
                  isDarkValue ? Icons.light_mode : Icons.dark_mode,
                );
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage(
                      title: 'Settings qwerty',
                    );
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
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
