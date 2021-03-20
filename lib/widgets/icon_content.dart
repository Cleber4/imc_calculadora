import 'package:flutter/material.dart';
import 'package:imc_calculadora/views/home_page.dart';

//const labelTextStylle = TextStyle(
//  fontSize: 18.0,
//  color: Color(0xFF8D8E98),
//);

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
          //style: labelTextStylle,
          style: TextStyle(
            fontSize: 18.0,
            color: selectColor[3],
          ),
        )
      ],
    );
  }
}
