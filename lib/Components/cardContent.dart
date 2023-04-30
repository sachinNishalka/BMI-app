import 'package:flutter/material.dart';

import 'package:bmiapp/constants.dart';

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
          style: KlabelStyle,
        )
      ],
    );
  }
}
