import 'package:flutter/material.dart';
import 'package:imc_calculadora/widgets/container_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imc_calculadora/widgets/icon_content.dart';

const bottomContainerHeight = 80.0;
const selectColor = [
  Color(0xFF0A0E21),
  Color(0xFF1D1E33),
  Color(0xFFEB1555),
  Color(0xFF8D8E98),
  Color(0xFF111328),
];

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color maleCardColour = selectColor[4];
  Color femaleCardColour = selectColor[4];

  void updateColor(int gender) {
    if (gender == 1) {
      // Male = 1
      if (maleCardColour == selectColor[4]) {
        maleCardColour = selectColor[1];
        femaleCardColour = selectColor[4];
      } else {
        maleCardColour = selectColor[4];
      }
    } else if (gender == 2) {
      // Female = 2
      if (femaleCardColour == selectColor[4]) {
        femaleCardColour = selectColor[1];
        maleCardColour = selectColor[4];
      } else {
        femaleCardColour = selectColor[4];
      }
    }
  }

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
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(1);
                        });
                      },
                      child: ContainerCard(
                          colour: maleCardColour,
                          cardChild: IconContent(
                            icon: FontAwesomeIcons.mars,
                            label: 'HOMEM',
                          )),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(2);
                        });
                      },
                      child: ContainerCard(
                        colour: femaleCardColour,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'MULHER',
                        ),
                      ),
                    ),
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
