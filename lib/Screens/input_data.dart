import 'package:bmiapp/Screens/resultsPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Components//cardContent.dart';
import '../Components/roundedCards.dart';
import '../constants.dart';
import 'package:bmiapp/Components/BottomButton.dart';
import 'package:bmiapp/BMI_Calculator.dart';

enum GenderType { male, female, other }

Color maleCardColor = KInactiveCardColor;
Color femaleCardColor = KInactiveCardColor;

int weight = 60;
int age = 23;

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
  int height = 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppTitle,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: KlabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: KSliderlabelStyle,
                      ),
                      Text(
                        "cm",
                        style: KlabelStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      activeTrackColor: Colors.white,
                      inactiveTickMarkColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      // activeColor: Color(0xFFEB1555),
                      // inactiveColor: Color(0xFF8D8E98),
                      value: height.toDouble(),
                      onChanged: (double value) {
                        setState(() {
                          height = value.toInt();
                        });
                      },
                      min: 100.0,
                      max: 220.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: roundedCard(
                    onPress: () {},
                    colour: KActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: KlabelStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: KSliderlabelStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // RoundedButton(prefIcon: FontAwesomeIcons.plus,),
                            // SizedBox(width: 10.0,),
                            // RoundedButton(prefIcon: FontAwesomeIcons.minus,),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              thingToDo: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              thingToDo: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: roundedCard(
                    onPress: () {},
                    colour: KActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: KlabelStyle,
                        ),
                        Text(
                          age.toString(),
                          style: KSliderlabelStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              thingToDo: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              thingToDo: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            textOnButton: "Calculate",
            theButtonFunction: () {

              BMI_Calculator objBMI_CAl = BMI_Calculator(
                  height: height.toDouble(), weight: weight.toDouble());

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    BMI: objBMI_CAl.calculateBMI(),
                    mainText: objBMI_CAl.getResult(),
                    definition: objBMI_CAl.getInterpretation(),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

// //creating a custom button
// class RoundedButtons extends StatelessWidget {
//   RoundedButtons({required IconData prefIcon});
//   late IconData prefIcon;
//   @override
//   Widget build(BuildContext context) {
//     return RawMaterialButton(
//       onPressed: () {},
//       shape: CircleBorder(),
//       child: Icon(prefIcon),
//       fillColor: Color(0xFF4C4F5E),
//
//     );
//   }
// }

// class RoundedButton extends StatelessWidget {
//   RoundedButton({required IconData prefIcon});
//   late IconData prefIcon;
//
//   @override
//   Widget build(BuildContext context) {
//     return RawMaterialButton(
//       onPressed: () {},
//       fillColor: Color(0xFF4C4F5E),
//       child: Icon(prefIcon, size: 10.0,),
//       shape: CircleBorder(),
//       constraints: BoxConstraints.tightFor(height: 40, width: 40),
//     );
//   }
// }

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.thingToDo});

  final IconData icon;
  final void Function() thingToDo;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: thingToDo,
      shape: CircleBorder(),
      // padding: EdgeInsets.zero,
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      elevation: 6.0,

      fillColor: Color(0xFF4C4F5E),
    );
  }
}
