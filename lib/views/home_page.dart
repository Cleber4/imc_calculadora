import 'package:flutter/material.dart';
import 'package:imc_calculadora/controllers/constants.dart';
import 'package:imc_calculadora/widgets/container_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imc_calculadora/widgets/icon_content.dart';

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
  int _height = 180;

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
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: labelTextStylle[0],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    //textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(_height.toString(), style: labelTextStylle[1]),
                      Text(
                        'cm',
                        style: labelTextStylle[0],
                      ),
                    ],
                  ),
                  Slider(
                    //value: height.toDouble(),
                    value: _height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: selectColor[2],
                    inactiveColor: selectColor[3],
                    onChanged: (double newValue) {
                      setState(() {
                        _height = newValue.round();
                        print(newValue);
                      });
                    },
                  )
                ],
              ),
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
