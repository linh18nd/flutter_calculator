import 'package:flutter_calculator/src/widget/calculator/calculator.dart';

import 'package:flutter/material.dart';

class CalculatorKeyboard extends StatelessWidget {
  const CalculatorKeyboard(
      {Key? key, required this.backgroundColor, required this.onTap})
      : super(key: key);
  final Color backgroundColor;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: KeyboardItem(
              onPressed: onTap,
              setBackgroundColor: true,
              data: const ["AC", "Ans", "%", "÷"],
              backgroundColor: backgroundColor,
            )),
        Expanded(
            flex: 1,
            child: KeyboardItem(
              onPressed: onTap,
              data: const ["7", "8", "9", "*"],
              backgroundColor: backgroundColor,
            )),
        Expanded(
            flex: 1,
            child: KeyboardItem(
              onPressed: onTap,
              data: const ["4", "5", "6", "-"],
              backgroundColor: backgroundColor,
            )),
        Expanded(
            flex: 1,
            child: KeyboardItem(
              onPressed: onTap,
              data: const ["1", "2", "3", "+"],
              backgroundColor: backgroundColor,
            )),
        Expanded(
            flex: 1,
            child: KeyboardItem(
              onPressed: onTap,
              data: const ["0", ".", "="],
              backgroundColor: backgroundColor,
            )),
      ],
    );
  }
}
