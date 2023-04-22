import 'package:flutter/material.dart';

const double bottomContainerHeight = 80;

const roundedCardColor = Color(0xFF1D1F33);
const bottomCardColor = Color(0xFFEB1555);

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
                  ),
                ),
                Expanded(
                  child: roundedCard(
                    colour: roundedCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: roundedCard(
              colour: roundedCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: roundedCard(
                    colour: roundedCardColor,
                  ),
                ),
                Expanded(
                  child: roundedCard(
                    colour: roundedCardColor,
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
