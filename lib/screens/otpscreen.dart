import 'package:finance_management_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OtpFieldController otpController = OtpFieldController();
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.37,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("otpvector1.png"),
                  ),
                ),
              ),
              Image.asset("otplogo.png"),
              OTPTextField(
                controller: otpController,
                onChanged: (pin) {
                  print("Changed: " + pin);
                },
                length: 5,
                // onChanged: (value) => print(value),
                width: MediaQuery.of(context).size.width,
                fieldWidth: 80,
                style: TextStyle(fontSize: 17),
                otpFieldStyle: OtpFieldStyle(
                    backgroundColor: Colors.blue, borderColor: Colors.green),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.underline,
                onCompleted: (pin) {
                  print("Completed: " + pin);
                  // Navigator.pushNamed(
                  //   context,
                  //   Routes.signUpScreen,
                  // );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "PLEASE ENTER THE OTP",
                style: TextStyle(
                    fontFamily: "Inter-Thin", color: Color(0xFF6057A6)),
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.14,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("otpvector2.png"),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 20,
                      left: 10,
                      child: Text(
                        "DIDN’T GET? | RESEND OTP",
                        style: TextStyle(
                          fontFamily: "Inter-Medium",
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      )),
                ],
              )
            ],
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
