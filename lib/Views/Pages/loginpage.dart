import 'package:flutter/material.dart';
import 'package:my_first_flutter/Views/Widgets/hero_widget.dart';

TextEditingController controller = TextEditingController();

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    print('init state');
    super.initState();
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Enter Name',
                border: OutlineInputBorder(),
              ),
              onEditingComplete: () {
                setState(() {
                  print('Do Som');
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
