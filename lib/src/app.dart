import 'package:flutter_calculator/src/controller/calculator_controller.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: updateData),
        body: CalculateController(
          // ignore: sort_child_properties_last
          child: const Home(),
          onTap: () {
            updateData();
          },
          data: calculate,
        )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  void updateData() {
    setState(() {});
  }
}
