import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    Key? key,
    required this.onTap,
    required this.child,
    this.backgroundColor,
  }) : super(key: key);
  final Widget child;
  final Color? backgroundColor;

  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: backgroundColor,
      ),
      onPressed: onTap,
      child: child,
    );
  }
}
