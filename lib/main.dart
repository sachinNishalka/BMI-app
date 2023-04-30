import 'package:flutter/material.dart';
import 'Screens/input_data.dart';
import 'Screens/resultsPage.dart';



void main() => runApp(BMICalculator());

Map<int, Color> color = {
  50: Color.fromRGBO(10, 14, 33, .1),
  100: Color.fromRGBO(10, 14, 33, .2),
  200: Color.fromRGBO(10, 14, 33, .3),
  300: Color.fromRGBO(10, 14, 33, .4),
  400: Color.fromRGBO(10, 14, 33, .5),
  500: Color.fromRGBO(10, 14, 33, .6),
  600: Color.fromRGBO(10, 14, 33, .7),
  700: Color.fromRGBO(10, 14, 33, .8),
  800: Color.fromRGBO(10, 14, 33, .9),
  900: Color.fromRGBO(10, 14, 33, 1),
};

class BMICalculator extends StatelessWidget {
  MaterialColor PrimeColor = MaterialColor(0xFF0A0E21, color);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColorDark: PrimeColor,
          appBarTheme: AppBarTheme(backgroundColor: PrimeColor.shade900),
          scaffoldBackgroundColor: PrimeColor.shade700),
      // home: InputPage(),
      initialRoute: '/inputPage',
      routes: {
        // '/' :(context) => BMICalculator(),
        '/inputPage' : (context) => InputPage(),
        '/reslutsPage': (context) => ResultsPage(),
      },
    );
  }
}
