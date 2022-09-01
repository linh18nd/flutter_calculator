import 'package:flutter/material.dart';
import 'package:flutter_calculator/src/resources/data/calculate.dart';
import 'package:flutter_calculator/src/widget/calculation_history.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen(
      {Key? key, required this.calculate, required this.onTap})
      : super(key: key);
  final Calculate calculate;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: CalculationHistory(
              onTap: onTap,
              data: calculate.getHistory,
            )),
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.bottomRight,
            child: Text(
              calculate.getData,
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.bottomRight,
            child: Text(
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
