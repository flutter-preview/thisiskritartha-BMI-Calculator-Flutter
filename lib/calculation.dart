import 'dart:math';

class Calculation {
  Calculation({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0;

  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String interpretation() {
    if (_bmi >= 25) {
      return 'You have higher than Normal BodyWeight. Try to do some Exercise. ';
    } else if (_bmi >= 18.5) {
      return 'You have Normal BodyWeight. Good Job !';
    } else {
      return 'You have lower than Normal Body Weight. Eat a bit more.';
    }
  }
}
