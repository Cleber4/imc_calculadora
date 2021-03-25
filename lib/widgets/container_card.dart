import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  ContainerCard({@required this.colour, this.cardChild, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
        child: cardChild,
      ),
    );
  }
}
