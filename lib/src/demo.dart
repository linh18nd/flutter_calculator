// import 'package:flutter/material.dart';
// //import 'package:google_fonts/google_fonts.dart';
// import 'package:math_expressions/math_expressions.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//           textTheme: GoogleFonts.montserratTextTheme(
//         Theme.of(context).textTheme,
//       )),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String _expression = "0";
//   String _history = "";

//   void _addCharacter(String char) {
//     setState(() {
//       _expression = _expression == "0" ? char : _expression + char;
//     });
//   }

//   void _allClear(String char) {
//     setState(() {
//       _expression = "";
//     });
//   }

//   void _calc(String char) {
//     try {
//       Parser p = Parser();
//       Expression exp = p.parse(_expression);
//       ContextModel cm = ContextModel();
//       setState(() {
//         _history = _expression;
//         _expression = exp.evaluate(EvaluationType.REAL, cm).toString();
//       });
//     } catch (e) {
//       setState(() {
//         _history = "invalid e xpression";
//         _expression = "0";
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: const Color.fromRGBO(25, 30, 35, 1),
//         body: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 15),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Container(
//                   height: 210,
//                   decoration: const BoxDecoration(
//                     borderRadius: BorderRadius.all(Radius.circular(10)),
//                     color: Color.fromRGBO(53, 55, 59, 1),
//                   ),
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
//                   child: SingleChildScrollView(
//                     reverse: true,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       verticalDirection: VerticalDirection.up,
//                       // ignore: prefer_const_literals_to_create_immutables
//                       children: [
//                         Text(
//                           _expression,
//                           textAlign: TextAlign.right,
//                           style: TextStyle(color: Colors.white, fontSize: 42),
//                         ),
//                         Divider(
//                           thickness: 2,
//                           color: Colors.white,
//                         ),
//                         Text(
//                           _history,
//                           textAlign: TextAlign.right,
//                           style: TextStyle(
//                               color: Colors.white.withOpacity(0.6),
//                               fontSize: 22),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 GridView.count(
//                   padding: EdgeInsets.only(top: 26),
//                   shrinkWrap: true,
//                   crossAxisCount: 4,
//                   crossAxisSpacing: 16,
//                   mainAxisSpacing: 16,
//                   children: [
//                     CalcButton(
//                       character: "C",
//                       onPressed: _allClear,
//                     ),
//                     CalcButton(
//                       character: "\$",
//                       onPressed: _addCharacter,
//                     ),
//                     CalcButton(
//                       character: "%",
//                       onPressed: _addCharacter,
//                     ),
//                     CalcButton(
//                       character: "+",
//                       onPressed: _addCharacter,
//                       rounded: true,
//                       fillColor: Color(0xffF6E389),
//                       textColor: Colors.black,
//                     ),
//                     CalcButton(
//                       character: "7",
//                       onPressed: _addCharacter,
//                     ),
//                     CalcButton(
//                       character: "8",
//                       onPressed: _addCharacter,
//                     ),
//                     CalcButton(
//                       character: "9",
//                       onPressed: _addCharacter,
//                     ),
//                     CalcButton(
//                       character: "-",
//                       onPressed: _addCharacter,
//                       rounded: true,
//                       fillColor: Color(0xffF6E389),
//                       textColor: Colors.black,
//                     ),
//                     CalcButton(
//                       character: "4",
//                       onPressed: _addCharacter,
//                     ),
//                     CalcButton(
//                       character: "5",
//                       onPressed: _addCharacter,
//                     ),
//                     CalcButton(
//                       character: "6",
//                       onPressed: _addCharacter,
//                     ),
//                     CalcButton(
//                       character: "*",
//                       onPressed: _addCharacter,
//                       rounded: true,
//                       fillColor: Color(0xffF6E389),
//                       textColor: Colors.black,
//                     ),
//                     CalcButton(
//                       character: "1",
//                       onPressed: _addCharacter,
//                     ),
//                     CalcButton(
//                       character: "2",
//                       onPressed: _addCharacter,
//                     ),
//                     CalcButton(
//                       character: "3",
//                       onPressed: _addCharacter,
//                     ),
//                     CalcButton(
//                       character: "/",
//                       onPressed: _addCharacter,
//                       rounded: true,
//                       fillColor: Color(0xffF6E389),
//                       textColor: Colors.black,
//                     ),
//                     CalcButton(
//                       character: "0",
//                       onPressed: _addCharacter,
//                     ),
//                     CalcButton(
//                       character: ".",
//                       onPressed: _addCharacter,
//                     ),
//                     CalcButton(
//                       character: "=",
//                       onPressed: _calc,
//                       rounded: true,
//                       fillColor: Color(0xffF6E389),
//                       textColor: Colors.black,
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
// }

// class CalcButton extends StatelessWidget {
//   final String character;
//   final Function onPressed;
//   final bool? rounded;
//   final Color fillColor;
//   final Color textColor;
//   final Color outlineColor;
//   final double? borderWidth;

//   const CalcButton({
//     Key? key,
//     required this.character,
//     required this.onPressed,
//     this.rounded = false,
//     this.fillColor = const Color(0xff35373B),
//     this.textColor = const Color(0xffffffff),
//     this.outlineColor = const Color(0xff4B4D51),
//     this.borderWidth = 2.0,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton(
//       style: OutlinedButton.styleFrom(
//         side: BorderSide(color: outlineColor, width: borderWidth ?? 2.0),
//         backgroundColor: fillColor,
//         shape: rounded == true ? CircleBorder() : null,
//       ),
//       onPressed: () => onPressed(character),
//       child: Text(
//         character,
//         style: TextStyle(
//           fontSize: 42,
//           color: textColor,
//         ),
//       ),
//     );
//   }
// }