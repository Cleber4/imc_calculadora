import 'package:flutter/material.dart';
import 'package:imc_calculadora/controllers/constants.dart';
import 'package:imc_calculadora/views/results_page.dart';

import 'views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC Calculadora',
      theme: ThemeData.dark().copyWith(
        primaryColor: selectColor[0],
        scaffoldBackgroundColor: selectColor[0],
        // accentColor: Colors.purple,
        // textTheme: TextTheme(body1: TextStyle(color: Colors.white))
      ),
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/result': (context) => ResultPage(),
      },
    );
  }
}
