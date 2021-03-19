import 'package:flutter/material.dart';
import 'package:imc_calculadora/widgets/container_card.dart';

const bottomContainerHeight = 80.0;
const selectColor = [
  Color(0xFF0A0E21),
  Color(0xFF1D1E33),
  Color(0xFFEB1555),
];

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('IMC FITNESS')),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ContainerCard(colour: selectColor[1]),
                  ),
                  Expanded(
                    child: ContainerCard(colour: selectColor[1]),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ContainerCard(
              colour: selectColor[1],
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ContainerCard(colour: selectColor[1]),
                  ),
                  Expanded(
                    child: ContainerCard(
                      colour: selectColor[1],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: selectColor[2],
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
