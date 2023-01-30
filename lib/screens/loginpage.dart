import 'package:finance_management_app/screens/otpscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/colors.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  //final String assetName = 'assets/Vector.svg';
  @override
  Widget build(BuildContext context) {
    TextEditingController PhoneNumberTextController = TextEditingController();
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: MyColors.ThemeColor,
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
                Container(
                  width: 260,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                                fontFamily: "Inter-Black",
                                fontSize: 30,
                                color: Color(0xFF877ECC)),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                            width: 174,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              color: Colors.black,
                              width: 3,
                            ))),
                            child: Row(
                              children: [
                                Image.asset("userimage.png"),
                                SizedBox(
                                    width: 140,
                                    child: TextField(
                                      controller: PhoneNumberTextController,
                                      decoration: InputDecoration(
                                        hintText: "Enter your number",
                                        border: InputBorder.none,
                                      ),
                                    ))
                              ],
                            ))
                      ],
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
          Positioned(
              top: 30,
              right: 60,
              child: ElevatedButton(
                child: Text("SIGN UP",
                    style: TextStyle(
                        fontFamily: "Inter-Bold",
                        fontSize: 18,
                        color: Color(0xFF6057A6))),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(10),
                  elevation: 5,
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.25, 50),
                ),
                onPressed: () => null,
              )),
          Positioned(
            bottom: 108,
            right: 0,
            child: ElevatedButton(
              child: Text(
                "GET OTP",
                style: TextStyle(
                    fontFamily: "Inter-Bold",
                    fontSize: 18,
                    color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    bottomLeft: Radius.circular(60),
                  )),
                  padding: EdgeInsets.all(20),
                  elevation: 5,
                  fixedSize:
                      Size(MediaQuery.of(context).size.width * 0.25, 50)),
              onPressed: () {
                if (PhoneNumberTextController.text.isNotEmpty) {
                  print(
                      "Your phone number is ${PhoneNumberTextController.text}");
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => OtpScreen())));
                }
              },
            ),
          )
        ],
      ),
    ));
  }
}
