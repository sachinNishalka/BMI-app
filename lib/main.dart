import 'package:flutter/material.dart';
import 'input_data.dart';
void main() => runApp(BMICalculator());

Map<int, Color> color =
{
  50:Color.fromRGBO(9,13,33, .1),
  100:Color.fromRGBO(9,13,33, .2),
  200:Color.fromRGBO(9,13,33, .3),
  300:Color.fromRGBO(9,13,33, .4),
  400:Color.fromRGBO(9,13,33, .5),
  500:Color.fromRGBO(9,13,33, .6),
  600:Color.fromRGBO(9,13,33, .7),
  700:Color.fromRGBO(9,13,33, .8),
  800:Color.fromRGBO(9,13,33, .9),
  900:Color.fromRGBO(9,13,33, 1),
};

class BMICalculator extends StatelessWidget {

  MaterialColor PrimeColor = MaterialColor(0xFF101427, color);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColorDark: PrimeColor,
          appBarTheme: AppBarTheme(
            backgroundColor: PrimeColor
          ),
          scaffoldBackgroundColor: PrimeColor
      ),
      home: InputPage(),
    );
  }
}

