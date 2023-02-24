import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextBottomUI extends StatelessWidget {
  TextBottomUI({
    this.text,
    super.key,
  });
  String? text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          height: MediaQuery.of(context).size.height / 2.6,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 4, right: 4, top: 60),
          child: Center(
            child: Text(
              text!,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'OnBoardingFont',
                  letterSpacing: 2,
                  wordSpacing: 3,
                  height: 1.5),
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
