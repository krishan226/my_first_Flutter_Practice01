import 'package:flutter/material.dart';
import 'package:my_first_flutter/Views/Widgets/hero_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            HeroWidget(
              title: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}
