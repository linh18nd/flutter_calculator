import 'package:flutter_calculator/src/resources/data/calculate.dart';

import 'package:flutter/cupertino.dart';

class CalculateController extends InheritedWidget {
  const CalculateController(
      {Key? key,
      required Widget child,
      required this.data,
      required this.onTap})
      : super(key: key, child: child);

  final Calculate data;
  final GestureTapCallback onTap;
  @override
  bool updateShouldNotify(CalculateController oldWidget) {
    return true;
  }

  static CalculateController of(BuildContext context) {
    final CalculateController? result =
        context.dependOnInheritedWidgetOfExactType<CalculateController>();
    assert(result != null, throw 'No CalculateController found in context');
    return result!;
  }
}
