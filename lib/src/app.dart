import 'package:flutter_calculator/src/resources/data/calculate.dart';
import 'package:flutter_calculator/src/screen/home_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Calculate calculate = Calculate();
  int count = 0;

  void chooseHistory() {}
  void _updateData(String str) {
    setState(() {
      try {
        calculate.inputData(str);
      } catch (e) {
        setState(() {
          calculate.delData();
          calculate.addData("nhập sai rồi!!!");
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(
        onTap: _updateData,
        calculate: calculate,
      ),
    );
  }
}
