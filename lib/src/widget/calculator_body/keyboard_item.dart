import 'package:flutter_calculator/src/widget/calculator_body/calculator.dart';
import 'package:flutter/material.dart';

class KeyboardItem extends StatelessWidget {
  const KeyboardItem(
      {Key? key,
      required this.onPressed,
      required this.data,
      required this.backgroundColor,
      this.setBackgroundColor = false})
      : super(key: key);
  final List<String> data;
  final Color backgroundColor;
  final bool setBackgroundColor;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    if (data.length == 4) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CalculatorButton(
            character: data[0],
            backgroundColor: setBackgroundColor ? backgroundColor : null,
            onPressed: onPressed,
            child: Text(
              data[0],
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          CalculatorButton(
            character: data[1],
            backgroundColor: setBackgroundColor ? backgroundColor : null,
            onPressed: onPressed,
            child: Text(
              data[1],
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          CalculatorButton(
            character: data[2],
            backgroundColor: setBackgroundColor ? backgroundColor : null,
            onPressed: onPressed,
            child: Text(
              data[2],
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          CalculatorButton(
            character: data[3],
            backgroundColor: backgroundColor,
            onPressed: onPressed,
            child: Text(
              data[3],
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ],
      );
    } else if (data.length == 3) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: CalculatorButton(
              onPressed: onPressed,
              character: data[0],
              child: Text(
                data[0],
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: CalculatorButton(
              character: data[1],
              onPressed: onPressed,
              child: Text(
                data[1],
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              child: CalculatorButton(
                onPressed: onPressed,
                character: data[2],
                backgroundColor: Color.fromARGB(
                    backgroundColor.alpha + 40,
                    backgroundColor.red - 115,
                    backgroundColor.green - 112,
                    backgroundColor.blue - 112),
                child: Text(
                  data[2],
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      throw "type 'data' accepts only arrays of length 3 or 4";
    }
  }
}
