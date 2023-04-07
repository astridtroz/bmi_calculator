import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.blueGrey.shade900,
        scaffoldBackgroundColor: Colors.blueGrey.shade900,

      ),
      home: InputPage(),
    );
  }
}



