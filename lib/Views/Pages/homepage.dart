import 'package:flutter/material.dart';
import 'package:my_first_flutter/Views/Widgets/card_containerwidget.dart';
import 'package:my_first_flutter/Views/Widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(
              title: 'Login',
            ),
            ...List.generate(
              2,
              (index) {
                return CardContainerWidgets(
                  title: 'Title',
                  description: 'Description',
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
