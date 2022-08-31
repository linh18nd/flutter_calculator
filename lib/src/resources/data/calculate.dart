import 'package:math_expressions/math_expressions.dart';

class Calculate {
  String _history = "";
  String _data = "";
  String _result = "0";
  String get getData => _data;
  String get getResult => _result;
  String get getHistory => _history;
  void addData(String str) {
    _data = _data + str;
  }

  void delData() {
    _data = "";
  }

  void calculate() {
    Variable ans = Variable('Ans');
    Parser p = Parser();
    Expression exp = p.parse(_data);
    ContextModel ctx = ContextModel();
    //ctx.bindVariable(ans, p.parse(_history));
    double eval = exp.evaluate(EvaluationType.REAL, ctx);
    _result = eval.toString();

    _history = _result;
  }

  void inputData(String str) {
    if (str == "AC") {
      delData();
    } else if (str == "=") {
      calculate();
    } else {
      addData(str);
    }
    print(_data);
  }
}
