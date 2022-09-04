import 'package:flutter/material.dart';
import 'package:flutter_calculator/src/resources/data/calculate.dart';
import 'package:flutter_calculator/src/widget/calculator_body/calculator.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen(
      {Key? key,
      required this.controller,
      required this.calculate,
      required this.onTap})
      : super(key: key);
  final Calculate calculate;
  final Function onTap;
  final ScrollController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Expanded(
            flex: 1,
            child: CalculationHistory(
              controller: controller,
              onTap: onTap,
              data: calculate.getHistory,
            )),
        Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.bottomRight,
            child: Text(
              softWrap: false,
              maxLines: 1,
              calculate.getData,
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.bottomRight,
            child: Text(
              softWrap: false,
              calculate.getResult,
              style: const TextStyle(
                  fontSize: 60, color: Color.fromARGB(255, 35, 201, 41)),
            ),
          ),
        ),
      ],
    );
  }
}
