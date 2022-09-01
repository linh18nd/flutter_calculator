import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    Key? key,
    required this.character,
    required this.onPressed,
    required this.child,
    this.backgroundColor,
  }) : super(key: key);
  final Widget child;
  final Color? backgroundColor;

  final Function onPressed;
  final String character;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: backgroundColor,
        ),
        onPressed: () => onPressed(character),
        child: child);
  }
}
