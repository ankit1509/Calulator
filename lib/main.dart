import 'package:flutter/material.dart';
import "Widgets/titleBar.dart";
import "Widgets/home.dart";

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {

  void handelChange() {

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      theme: ThemeData(
        primaryColor: Colors.orange,
      ),
      home: Scaffold(
      appBar: CalculatorAppBar(
        title: "Calculator",
      ),
      body: SimpleCalculator(),
      )
    );
  }
}