import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  final String assetName = 'assets/Vector.svg';
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFF877ECC),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: Image.asset(
                "VectorImage.png",
                //height: MediaQuery.of(context).size.height - 80,
                alignment: Alignment.topLeft,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      fontFamily: "Inter",
                      //fontSize: 50,
                      color: Color(0xFF877ECC)),
                ),
              ),
            ),
          ],
        ),
        // child: new SvgPicture.asset(
        //   assetName,
        //   alignment: Alignment.topLeft,
        // )),
      ),
    ));
  }
}
