import 'package:flutter/material.dart';
import 'package:imc_calculadora/controllers/constants.dart';
//import 'package:imc_calculadora/views/home_page.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  IconContent({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelTextStylle[0],
          /*style: TextStyle(
            fontSize: 18.0,
            color: selectColor[3],
          ),*/
        )
      ],
    );
  }
}
