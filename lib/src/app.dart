import 'package:flutter_calculator/src/resources/data/calculate.dart';
import 'package:flutter_calculator/src/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/src/widget/dialog/message_dialog.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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

  void _getHistory(String str) {
    setState(() {
      try {
        calculate.delData();
        calculate.inputData(str);
      } catch (e) {
        setState(() {
          MessageDialog();
          // calculate.delData();
          // calculate.addData("nhập sai rồi!!!");
        });
      }
    });
  }

  void _updateData(String str) {
    setState(() {
      try {
        calculate.inputData(str);
      } catch (e) {
        setState(() {
          showDialog<String>(
              context: context,
              builder: (BuildContext context) => MessageDialog());
          // calculate.delData();
          // calculate.addData("nhập sai rồi!!!");
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(
        onGetHistory: _getHistory,
        onTap: _updateData,
        calculate: calculate,
      ),
    );
  }
}
