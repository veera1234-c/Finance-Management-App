import 'dart:async';

import 'package:finance_management_app/constants/routes.dart';
import 'package:finance_management_app/screens/loginpage.dart';
import "package:flutter/material.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushNamed(context, Routes.onboardingScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Wrap(
          children: [
            Column(
              children: [
                Container(
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/financeGuru_logo.png",
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 1.7,
                        fit: BoxFit.fitHeight,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 1.7,
                        alignment: Alignment.bottomCenter,
                        child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'FINANCIAL',
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'OnBoardingFont',
                                      letterSpacing: 2)),
                              TextSpan(
                                  text: 'GURU',
                                  style: TextStyle(
                                    color: Colors.purple[900],
                                    fontFamily: 'OnBoardingFont',
                                    fontSize: 55,
                                    fontWeight: FontWeight.w600,
                                  ))
                            ])),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Text(
                    'ALL YOUR FINANCE AT ONE PLACE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontFamily: 'OnBoardingFont',
                        fontWeight: FontWeight.w500),
                  ),
                  height: 60,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Colors.deepPurple, Colors.purple]),
                      borderRadius: BorderRadius.vertical(
                          top: Radius.elliptical(
                              MediaQuery.of(context).size.width, 70))),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
