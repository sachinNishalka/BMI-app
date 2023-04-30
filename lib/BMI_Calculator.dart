import 'dart:math';

class BMI_Calculator {
  BMI_Calculator({required this.height, required this.weight});
  final double height;
  final double weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi>=25){
      return 'You have a higher than normal body weight. Try to do some more exercise';
    }else if(_bmi >=18.5){
      return 'Good job you are keeping your body weight at a good level';
    }else{
      return 'You need to have more food. You are underweight';
    }
  }
}
