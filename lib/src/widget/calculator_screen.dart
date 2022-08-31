import 'package:flutter_calculator/src/controller/calculator_controller.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);
//final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.bottomRight,
            child: Text(
              CalculateController.of(context).data.getData,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.bottomRight,
            child: Text(
              CalculateController.of(context).data.getResult,
              style: const TextStyle(
                  fontSize: 50, color: Color.fromARGB(255, 35, 201, 41)),
            ),
          ),
        ),
      ],
    );
  }
}
