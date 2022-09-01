import 'package:math_expressions/math_expressions.dart';

class Calculate {
  String _ans = "0";
  String _data = "";
  String _result = "";
  final List<String> _history = [];

  List get getHistory => _history;

  String get getData => _data;

  String get getResult => _result;

  set setResult(String result) => _result = result;

  String get getAns => _ans;
  void addData(String str) {
    _data = _data + str;
  }

  void delData() {
    _data = "";
    _result = "";
  }

  void calculate() {
    //Map map = {"%": "/100", "÷": "/"};
    Variable ans = Variable('Ans');
    //userInputFC = userInputFC.replaceAll("÷", "/");
    String str = _data.replaceAll("%", "/100");
    Parser p = Parser();
    Expression exp = p.parse(str.replaceAll("÷", "/"));
    ContextModel ctx = ContextModel();
    ctx.bindVariable(ans, p.parse(_ans));
    double eval = exp.evaluate(EvaluationType.REAL, ctx);
    _result = eval.toString();
    _ans = _result;
  }

  void inputData(String str) {
    if (str == "AC") {
      delData();
    } else if (str == "=") {
      calculate();
      _history.add(_data);
    } else {
      addData(str);
    }
    print(_data);
  }
}
