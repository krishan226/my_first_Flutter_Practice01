import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_first_flutter/Views/Pages/navigationstack1.dart';
import 'package:my_first_flutter/Views/widget_tree.dart';

TextEditingController controller = TextEditingController();

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
    required this.title,
  });

//MARK:  Variables
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  String validEmail = '123';
  String validPassword = '456';

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: LayoutBuilder(
              builder: (context, BoxConstraints constraints) {
                return FractionallySizedBox(
                  widthFactor: constraints.maxWidth > 500 ? 0.5 : 1.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // HeroWidget(
                      //   title: widget.title,
                      // ),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      Lottie.asset('assets/lotties/welcome.json',
                          height: 400.0),
                      TextField(
                        controller: controllerEmail,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onEditingComplete: () {
                          setState(() {
                            print('Do Something...');
                          });
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: controllerPassword,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onEditingComplete: () {
                          setState(() {
                            print('Do Something...');
                          });
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FilledButton(
                        onPressed: () {
                          onLoginPress();
                        },
                        style: FilledButton.styleFrom(
                          minimumSize: Size(200, 50.0),
                        ),
                        child: Text(widget.title),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void onLoginPress() {
    if (controllerEmail.text == validEmail &&
        controllerPassword.text == validPassword) {
      print('Login Successful');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
      );
    } else {
      print('Invalid credentials');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return NavigationStack1();
          },
        ),
      );
    }
  }
}
