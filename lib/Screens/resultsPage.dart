import 'package:flutter/material.dart';
import '../constants.dart';
import '../Components//roundedCards.dart';
import 'package:bmiapp/Components/BottomButton.dart';




class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

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
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text("Your Result", style: KyourResultLabel,),
            alignment: Alignment.bottomLeft,
          ),
          Expanded(
            flex: 5,
            child: roundedCard(
              colour: KActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Normal", style: KstatustLabel,),
                  Text("18.3", style: KmainLabel,),
                  Text("Your BMI result is low, You should eat more!", style: KfinalDescription, textAlign: TextAlign.center,),
                ],

              ),
              onPress: () {},
            ),
          ),
          BottomButton(textOnButton: "RE-CALCULATE", theButtonFunction: (){
            Navigator.pop(context);
          }),

          //this is my code before i watch the mentor doing it
          // Text(
          //   "Your Result",
          //   style: KSliderlabelStyle,
          //   textAlign: TextAlign.left,
          // ),
          // Expanded(
          //   child: Container(
          //     margin: EdgeInsets.all(15.0),
          //     padding: EdgeInsets.all(5.0),
          //     // color: KActiveCardColor,
          //
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(10.0),
          //       color: KActiveCardColor,
          //     ),
          //
          //
          //
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.stretch,
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         Center(
          //           child: Text(
          //             "OVERWEIGHT",
          //             style: KoverWeightLabel,
          //           ),
          //         ),
          //         Center(
          //           child: Text(
          //             "26.7",
          //             style: KReustltCardMain,
          //           ),
          //         ),
          //         Center(
          //           child: Text(
          //             "You have a higher than normal body weight. Try to exercise more.",
          //             style: KResultDescriptionStyle,
          //             textAlign: TextAlign.center,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          //   child: Container(
          //     child: Center(
          //       child: Text(
          //         "RE-CALCULATE",
          //         style: KButtonLabelStyle,
          //       ),
          //     ),
          //     width: double.infinity,
          //     color: KBottomCardColor,
          //     height: KBottomContainerHeight,
          //     margin: EdgeInsets.only(top: 10.0),
          //   ),
          // )
        ],
      ),
    );
  }
}
