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

enum Gender {
  male,
  female,
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender selectedGender;

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
                    child: ContainerCard(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        colour: selectedGender == Gender.male
                            ? selectColor[1]
                            : selectColor[4],
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'HOMEM',
                        )),
                  ),
                  Expanded(
                    child: ContainerCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? selectColor[1]
                          : selectColor[4],
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'MULHER',
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
