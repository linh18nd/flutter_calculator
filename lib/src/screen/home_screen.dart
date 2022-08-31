import 'package:flutter_calculator/src/widget/calculator.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);
  //final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    const Color color = Color.fromARGB(65, 130, 125, 125);
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        children: const [
          Expanded(
            flex: 3,
            child: CalculatorScreen(),
          ),
          Divider(
            indent: 100,
            thickness: 4,
            //height: 5,
            color: Color.fromARGB(96, 110, 99, 99),
          ),
          Expanded(
            flex: 5,
            child: CalculatorKeyboard(
              backgroundColor: color,
            ),
          ),
        ],
      ),
    );
  }
}
