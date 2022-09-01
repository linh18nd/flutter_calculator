import 'package:flutter/material.dart';

class CalculationHistory extends StatelessWidget {
  const CalculationHistory({Key? key, required this.data, required this.onTap})
      : super(key: key);
  final List<dynamic> data;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Container(
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
