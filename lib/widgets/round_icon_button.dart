import 'package:flutter/material.dart';
import 'package:imc_calculadora/controllers/constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundIconButton({@required this.icon, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      shape: CircleBorder(),
      fillColor: selectColor[7],
      child: Icon(icon),
      onPressed: onPressed,
    );
  }
}
