import 'package:finance_management_app/constants/colors.dart';
import 'package:finance_management_app/screens/menupage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../constants/routes.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.37,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/otpvector1.png"),
                    ),
                  ),
                ),
                Image.asset("assets/otplogo.png"),
                OtpTextField(
                  mainAxisAlignment: MainAxisAlignment.center,
                  numberOfFields: 6,
                  // focusedBorderColor: MyColors.ThemeColor,
                  // borderWidth: 5,
                  borderRadius: BorderRadius.circular(30),
                  fillColor: Colors.black.withOpacity(0.1),
                  filled: true,
                  fieldWidth: 60,
                  onCodeChanged: (value) => print("Changed : " + value),
                  onSubmit: (value) {
                    print("The OTP code is " + value);
                    Navigator.pushNamed(context, Routes.menuScreen);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "PLEASE ENTER THE OTP",
                  style:
                      TextStyle(fontFamily: "Inter", color: Color(0xFF6057A6)),
                ),
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.14,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/otpvector2.png"),
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 20,
                        left: 10,
                        child: Text(
                          "DIDN’T GET? | RESEND OTP",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        )),
                  ],
                )
              ],
            ),
          ),
          //     child: Stack(
          //   children: [
          //     Positioned(
          //         top: 0,
          //         child: Image.asset(
          //           "otpvector1.png",
          //         )),
          //     Positioned(
          //         bottom: 0,
          //         child: Image.asset(
          //           "otpvector2.png",
          //         )),
          //     Positioned(
          //         bottom: 20,
          //         left: 10,
          //         child: Text(
          //           "DIDN’T GET? | RESEND OTP",
          //           style: TextStyle(fontFamily: "Inter", fontSize: 10),
          //         )),
          //   ],
          // )
        ),
      ),
    );
  }
}
