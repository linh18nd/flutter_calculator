import 'package:flutter_calculator/src/resources/data/calculate.dart';
import 'package:flutter_calculator/src/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/src/widget/dialog/message_dialog.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
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
  final constroller = ScrollController();

  void _getHistory(String str) {
    setState(() {
      calculate.delData();
      calculate.inputData(str);
      constroller.jumpTo(constroller.position.maxScrollExtent);
    });
  }

  void _updateData(String str) {
    setState(() {
      try {
        calculate.inputData(str);
        constroller.jumpTo(constroller.position.maxScrollExtent);
      } catch (e) {
        setState(() {
          showDialog<String>(
              context: context,
              builder: (BuildContext context) => const MessageDialog());
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(
        controller: constroller,
        onGetHistory: _getHistory,
        onTap: _updateData,
        calculate: calculate,
      ),
    );
  }
}
