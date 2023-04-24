import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cardContent.dart';
import 'roundedCards.dart';

const double bottomContainerHeight = 80;

const activeCardColor = Color(0xFF1D1E33);

const inactiveCardColor = Color(0xFF111328);

const bottomCardColor = Color(0xFFEB1555);

enum GenderType { male, female, other }

Color maleCardColor = inactiveCardColor;
Color femaleCardColor = inactiveCardColor;

//
// void updateColor(GenderType selectedGender) {
//   if (selectedGender == GenderType.male) {
//     if (maleCardColor == inactiveCardColor) {
//       maleCardColor = activeCardColor;
//       femaleCardColor = inactiveCardColor;
//     } else {
//       maleCardColor = inactiveCardColor;
//     }
//   } else if (selectedGender == GenderType.female) {
//     if (femaleCardColor == inactiveCardColor) {
//       femaleCardColor = activeCardColor;
//       maleCardColor = inactiveCardColor;
//     } else {
//       femaleCardColor = inactiveCardColor;
//     }
//   }
// }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        maleCardColor = maleCardColor==inactiveCardColor?activeCardColor:inactiveCardColor;
                        femaleCardColor = inactiveCardColor;
                      });
                    },
                    child: roundedCard(
                      colour: maleCardColor,
                      cardChild: cardContent(
                        cardIcon: FontAwesomeIcons.mars,
                        cardText: "Male",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        femaleCardColor = femaleCardColor == inactiveCardColor?activeCardColor:inactiveCardColor;
                        maleCardColor = inactiveCardColor;
                      });
                    },
                    child: roundedCard(
                      colour: femaleCardColor,
                      cardChild: cardContent(
                          cardIcon: FontAwesomeIcons.venus, cardText: "FEMALE"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: roundedCard(
              colour: activeCardColor,
              cardChild: Container(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: roundedCard(
                    colour: activeCardColor,
                    cardChild: Container(),
                  ),
                ),
                Expanded(
                  child: roundedCard(
                    colour: activeCardColor,
                    cardChild: Container(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: bottomCardColor,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}
