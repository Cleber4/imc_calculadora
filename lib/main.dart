import 'package:flutter/material.dart';

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
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        // accentColor: Colors.purple,
        // textTheme: TextTheme(body1: TextStyle(color: Colors.white))
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
