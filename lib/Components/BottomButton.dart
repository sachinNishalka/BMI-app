import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({required this.textOnButton, required this.theButtonFunction});

  late String textOnButton;
  late void Function() theButtonFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: theButtonFunction,
      child: Container(
        child: Center(
          child: Text(
            textOnButton,
            style: KButtonLabelStyle,
          ),
        ),
        width: double.infinity,
        color: KBottomCardColor,
        height: KBottomContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
