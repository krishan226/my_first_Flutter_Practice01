import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_first_flutter/Views/Pages/loginpage.dart';
// import 'package:my_first_flutter/Views/Widgets/hero_widget.dart';
import 'package:my_first_flutter/views/widget_tree.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: LayoutBuilder(
                builder: (context, BoxConstraints constraints) {
                  return FractionallySizedBox(
                    widthFactor: screenWidth > 500 ? 0.5 : 1.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // HeroWidget(),
                        Lottie.asset('assets/lotties/mobilephone.json',
                            height: 400.0),
                        FittedBox(
                          child: Text(
                            'Flutter application',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                letterSpacing: 5.0),
                          ),
                        ),
                        FilledButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoginPage(
                                    title: 'User Login',
                                  );
                                },
                              ),
                            );
                          },
                          style: FilledButton.styleFrom(
                            minimumSize: Size(double.infinity, 40.0),
                          ),
                          child: Text('Get Started'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return WidgetTree();
                                },
                              ),
                            );
                          },
                          style: FilledButton.styleFrom(
                            minimumSize: Size(double.infinity, 40.0),
                          ),
                          child: Text('Register'),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
