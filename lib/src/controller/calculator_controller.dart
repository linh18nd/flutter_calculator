import 'package:flutter_calculator/src/resources/data/calculate.dart';

import 'package:flutter/cupertino.dart';

class CalculateController extends InheritedWidget {
  const CalculateController(
      {Key? key,
      required this.onTap,
      required Widget child,
      required this.data})
      : super(key: key, child: child);
  final GestureTapCallback? onTap;
  final Calculate data;

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
