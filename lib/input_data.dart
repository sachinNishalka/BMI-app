import 'package:flutter/material.dart';

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
                    colour: Color(0xFF1D1F33),
                  ),
                ),
                Expanded(
                  child: roundedCard(
                    colour: Color(0xFF1D1F33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: roundedCard(
              colour: Color(0xFF1D1F33),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: roundedCard(
                    colour: Color(0xFF1D1F33),
                  ),
                ),
                Expanded(
                  child: roundedCard(
                    colour: Color(0xFF1D1F33),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class roundedCard extends StatelessWidget {
  roundedCard({required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
