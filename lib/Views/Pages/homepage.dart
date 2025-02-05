import 'package:flutter/material.dart';
import 'package:my_first_flutter/Views/Widgets/card_containerwidget.dart';
import 'package:my_first_flutter/Views/Widgets/hero_widget.dart';
import 'package:my_first_flutter/data/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cardList = [
      KValuesOfCard.keyConcepts,
      KValuesOfCard.cleanUi,
      KValuesOfCard.fixedBugs,
      KValuesOfCard.basicLayout,
      KValuesOfCard.keyConcepts,
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(
              title: 'Login',
            ),
            ...List.generate(
              cardList.length,
              (index) {
                return CardContainerWidgets(
                  title: cardList.elementAt(index),
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
