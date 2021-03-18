import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  final Color colour;

  ContainerCard({this.colour});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
