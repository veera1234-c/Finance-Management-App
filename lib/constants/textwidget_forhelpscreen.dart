import 'package:flutter/material.dart';

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
          height: MediaQuery.of(context).size.height / 4,
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
                  height: 1.3),
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}

class TextList extends StatelessWidget {
  TextList(this.text, {super.key});
  String? text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w500,
        fontFamily: 'ButtonFont',
        letterSpacing: 2,
      ),
    );
  }
}
