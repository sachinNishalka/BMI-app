import 'package:flutter/material.dart';

const cardTextColor = Color(0xFF8D8E98);

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
