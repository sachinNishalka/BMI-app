import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 80;

const roundedCardColor = Color(0xFF1D1F33);
const bottomCardColor = Color(0xFFEB1555);
const cardTextColor = Color(0xFF8D8E98);

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
                    colour: roundedCardColor,
                    cardChild: cardContent(
                      cardIcon: FontAwesomeIcons.mars,
                      cardText: "Male",
                    ),
                  ),
                ),
                Expanded(
                  child: roundedCard(
                    colour: roundedCardColor,
                    cardChild: Container(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: roundedCard(
              colour: roundedCardColor,
              cardChild: Container(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: roundedCard(
                    colour: roundedCardColor,
                    cardChild: Container(),
                  ),
                ),
                Expanded(
                  child: roundedCard(
                    colour: roundedCardColor,
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

class cardContent extends StatelessWidget {
  cardContent({required this.cardIcon, required this.cardText});

  final IconData cardIcon;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 18.0,
        ),
        Text(
          "$cardText",
          style: TextStyle(fontSize: 18.0, color: cardTextColor),
        )
      ],
    );
  }
}

class roundedCard extends StatelessWidget {
  roundedCard({required this.colour, required this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
      child: cardChild,
    );
  }
}
