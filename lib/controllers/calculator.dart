import 'dart:math';

class Calculator {
  final int height;
  final int weight;

  Calculator({this.height, this.weight});

  double _imc;

  String calculatorIMC() {
    _imc = weight / pow(height / 100, 2);
    return _imc.toStringAsFixed(1);
  }

  String getResult() {
    if (_imc >= 25.0) {
      return 'Excesso de peso';
    } else if (_imc > 18.0) {
      return 'Normal';
    } else {
      return 'Abaixo do Peso';
    }
  }

  String getInterpretation() {
    if (_imc >= 25.0) {
      return 'Sinto muito, mas o seu IMC é de ${_imc.toStringAsFixed(1)} kg/m2, por isso você está acima do peso e deveria emagrecer';
    } else if (_imc > 18.0) {
      return ' Parabéns, seu IMC é ${_imc.toStringAsFixed(1)} kg/m2 e você está dentro do peso adequado!';
    } else {
      return 'Sinto muito, seu IMC é de ${_imc.toStringAsFixed(1)} kg/m2 e você precisa ganhar peso.';
    }
  }
}
