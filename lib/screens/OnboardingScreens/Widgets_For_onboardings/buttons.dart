import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SkipButton extends StatelessWidget {
  SkipButton({
    this.navto,
    this.buttonText,
    super.key,
  });

  VoidCallback? navto;
  String? buttonText;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 15,
      right: 0,
      child: ElevatedButton(
          onPressed: navto,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple[600],
              shadowColor: Colors.deepPurple,
              elevation: 7),
          child: Text(
            buttonText!,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.orange,
              fontSize: 30,
              fontWeight: FontWeight.w500,
              letterSpacing: 6,
            ),
          )),
    );
  }
}
