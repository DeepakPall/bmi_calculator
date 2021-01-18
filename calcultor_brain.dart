import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final height;
  final weight;
  double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Over Weight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Under weight';
    }
  }

  String getInterPretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal weight. Try to exercise more.';
    } else if (_bmi >= 18) {
      return 'You have a normal weight. Good job!';
    } else {
      return ' You have lower than normal weight. You can eat a bit more.';
    }
  }
}
