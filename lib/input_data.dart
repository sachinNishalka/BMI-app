import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cardContent.dart';
import 'roundedCards.dart';
import 'constants.dart';

enum GenderType { male, female, other }

// Color maleCardColor = inactiveCardColor;
// Color femaleCardColor = inactiveCardColor;

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

GenderType selectedGender = GenderType.male;

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
                  child: roundedCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    colour: selectedGender == GenderType.male
                        ? KActiveCardColor
                        : KInactiveCardColor,
                    cardChild: cardContent(
                      cardIcon: FontAwesomeIcons.mars,
                      cardText: "Male",
                    ),
                  ),
                ),
                Expanded(
                  child: roundedCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                    colour: selectedGender == GenderType.female
                        ? KActiveCardColor
                        : KInactiveCardColor,
                    cardChild: cardContent(
                        cardIcon: FontAwesomeIcons.venus, cardText: "FEMALE"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: roundedCard(
              onPress: () {},
              colour: KActiveCardColor,
              cardChild: Container(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: roundedCard(
                    onPress: () {},
                    colour: KActiveCardColor,
                    cardChild: Container(),
                  ),
                ),
                Expanded(
                  child: roundedCard(
                    onPress: () {},
                    colour: KActiveCardColor,
                    cardChild: Container(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: KBottomCardColor,
            height: KBottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}
