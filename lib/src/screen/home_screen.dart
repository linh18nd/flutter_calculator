import 'package:flutter_calculator/src/resources/data/calculate.dart';
import 'package:flutter_calculator/src/widget/calculator_body/calculator.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
    required this.controller,
    required this.onGetHistory,
    required this.calculate,
    required this.onTap,
  }) : super(key: key);
  final Calculate calculate;
  final Function onTap;
  final Function onGetHistory;
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    const Color color = Color.fromARGB(65, 130, 125, 125);
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: CalculatorScreen(
              controller: controller,
              onTap: onGetHistory,
              calculate: calculate,
            ),
          ),
          const Divider(
            indent: 100,
            thickness: 4,
            //height: 5,
            color: Color.fromARGB(96, 110, 99, 99),
          ),
          Expanded(
            flex: 5,
            child: CalculatorKeyboard(
              onTap: onTap,
              backgroundColor: color,
            ),
          ),
        ],
      ),
    );
  }
}
