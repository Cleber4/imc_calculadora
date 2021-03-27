import 'package:flutter/material.dart';
import 'package:imc_calculadora/controllers/constants.dart';

class ButtonFunction extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  ButtonFunction({@required this.onTap, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: labelTextStylle[2],
          ),
        ),
        color: selectColor[2],
        margin: EdgeInsets.only(top: 10.0),
        //padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}
