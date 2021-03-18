import 'package:flutter/material.dart';
import 'package:imc_calculadora/widgets/container_card.dart';

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
                    child: ContainerCard(colour: Color(0xFF1D1E33)),
                  ),
                  Expanded(
                    child: ContainerCard(colour: Color(0xFF1D1E33)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ContainerCard(colour: Color(0xFF1D1E33)),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ContainerCard(colour: Color(0xFF1D1E33)),
                  ),
                  Expanded(
                    child: ContainerCard(
                      colour: Color(0xFF1D1E33),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
