import 'package:flutter/material.dart';
import 'package:imc_calculadora/controllers/constants.dart';
import 'package:imc_calculadora/widgets/button_fuction.dart';
import 'package:imc_calculadora/widgets/container_card.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMC FITNESS'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Resultado',
                style: labelTextStylle[3],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ContainerCard(
              colour: selectColor[1],
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'NORMAL',
                    style: labelTextStylle[4],
                  ),
                  Text(
                    '18.3',
                    style: labelTextStylle[5],
                  ),
                  Text(
                    'Seu peso está normal',
                    textAlign: TextAlign.center,
                    style: labelTextStylle[6],
                  ),
                ],
              ),
            ),
          ),
          ButtonFunction(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULAR',
          ),
        ],
      ),
    );
  }
}
