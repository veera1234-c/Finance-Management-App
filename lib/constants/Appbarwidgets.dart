import 'package:flutter/material.dart';

class TextAppBar extends StatelessWidget {
  TextAppBar(this.textAppBar, {super.key});
  String? textAppBar;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAppBar!,
      style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w900,
          fontFamily: 'OnBoardingFont',
          letterSpacing: 5,
          wordSpacing: 3,
          height: 1.5),
      textAlign: TextAlign.center,
    );
  }
}

// class AppBars extends StatelessWidget {
//   AppBars(this.text, {super.key});
//   String text;
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       toolbarHeight: 80,
//       centerTitle: true,
//       title: TextAppBar(text),
//       backgroundColor: Colors.deepPurple,
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//               bottom:
//                   Radius.elliptical(MediaQuery.of(context).size.width, 30))),
//     );
//   }
// }
