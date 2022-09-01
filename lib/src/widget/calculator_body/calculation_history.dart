import 'package:flutter/material.dart';

class CalculationHistory extends StatelessWidget {
  const CalculationHistory(
      {Key? key,
      required this.controller,
      required this.data,
      required this.onTap})
      : super(key: key);
  final List<dynamic> data;
  final Function onTap;
  final ScrollController controller;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: controller,
      physics: const ScrollPhysics(parent: ClampingScrollPhysics()),
      reverse: false,
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Container(
          //color: Color.fromARGB(222, 101, 99, 93),
          //padding: EdgeInsets.only(top: 20, bottom: 20),
          alignment: Alignment.bottomRight,
          child: TextButton(
            onPressed: () => onTap(data[index]),
            child: Text(
              data[index],
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        );
      },
    );
  }
}
