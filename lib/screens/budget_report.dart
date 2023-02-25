import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Builder(builder: (BuildContext context) {
      return Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Positioned(
              left: 0,
              top: 0,
              child: Container(
                child: Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    child: Container(
                      key: Key(
                        "container for nested stack of 202:4",
                      ),
                      child: Stack(
                        key: Key(
                          "iPhone 14 - 3 (202:4)",
                        ),
                        children: [
                          Positioned(
                            left: 0,
                            top: -71,
                            child: Container(
                              child: Container(
                                key: Key(
                                  "Rectangle 13 (202:5)",
                                ),
                                width: 390,
                                height: 171,
                                decoration: BoxDecoration(
                                  color: Color(
                                    0xff877ecc,
                                  ),
                                ),
                              ),
                              width: 390,
                              height: 171,
                              decoration: BoxDecoration(
                                color: Color(
                                  0xff877ecc,
                                ),
                                borderRadius: BorderRadius.circular(
                                  74,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 38,
                            top: 0,
                            child: SizedBox(
                              child: Text(
                                "BUDGET REPORT",
                                key: Key(
                                  "BUDGET REPORT (202:6)",
                                ),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 34,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Cairo",
                                  letterSpacing: 0.1,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              width: 311,
                              height: 100,
                            ),
                          ),
                          Positioned(
                            left: 249,
                            top: 759,
                            child: SizedBox(
                              child: Text(
                                "CONFIRM",
                                key: Key(
                                  "CONFIRM (202:7)",
                                ),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Cairo",
                                  letterSpacing: 0.1,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              width: 114,
                              height: 59,
                            ),
                          ),
                          Positioned(
                            left: 11,
                            top: 796,
                            child: Container(
                              child: Container(
                                key: Key(
                                  "Rectangle 23 (202:9)",
                                ),
                                width: 325,
                                height: 23,
                                decoration: BoxDecoration(
                                  color: Color(
                                    0xff02a8dd,
                                  ),
                                ),
                              ),
                              width: 325,
                              height: 23,
                              decoration: BoxDecoration(
                                color: Color(
                                  0xff02a8dd,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 11,
                            top: 754,
                            child: SizedBox(
                              child: Text(
                                "SHOPPING",
                                key: Key(
                                  "SHOPPING (202:10)",
                                ),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Cairo",
                                  letterSpacing: 0.1,
                                ),
                              ),
                              width: 316,
                              height: 35,
                            ),
                          ),
                          Positioned(
                            left: 11,
                            top: 724,
                            child: Container(
                              child: Container(
                                key: Key(
                                  "Rectangle 24 (202:11)",
                                ),
                                width: 221,
                                height: 23,
                                decoration: BoxDecoration(
                                  color: Color(
                                    0xff155faa,
                                  ),
                                ),
                              ),
                              width: 221,
                              height: 23,
                              decoration: BoxDecoration(
                                color: Color(
                                  0xff155faa,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 17,
                            top: 670,
                            child: SizedBox(
                              child: Text(
                                "RENT",
                                key: Key(
                                  "RENT (202:12)",
                                ),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Cairo",
                                  letterSpacing: 0.1,
                                ),
                              ),
                              width: 355,
                              height: 47,
                            ),
                          ),
                          Positioned(
                            left: 11,
                            top: 640,
                            child: Image.network(
                              "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/b0041b26-9483-487e-b811-893adf51e5b9",
                              width: 155,
                              height: 23,
                              key: Key(
                                "Rectangle 25 (202:13)",
                              ),
                            ),
                          ),
                          Positioned(
                            left: 11,
                            top: 588,
                            child: SizedBox(
                              child: Text(
                                "DINNING",
                                key: Key(
                                  "DINNING (202:14)",
                                ),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Cairo",
                                  letterSpacing: 0.1,
                                ),
                              ),
                              width: 323,
                              height: 45,
                            ),
                          ),
                          Positioned(
                            left: 11,
                            top: 558,
                            child: Container(
                              child: Container(
                                key: Key(
                                  "Rectangle 23 (202:15)",
                                ),
                                width: 132,
                                height: 23,
                                decoration: BoxDecoration(
                                  color: Color(
                                    0xffde630b,
                                  ),
                                ),
                              ),
                              width: 132,
                              height: 23,
                              decoration: BoxDecoration(
                                color: Color(
                                  0xffde630b,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 11,
                            top: 513,
                            child: SizedBox(
                              child: Text(
                                "TRAVEL",
                                key: Key(
                                  "TRAVEL (202:16)",
                                ),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Cairo",
                                  letterSpacing: 0.1,
                                ),
                              ),
                              width: 327,
                              height: 38,
                            ),
                          ),
                          Positioned(
                            left: 17,
                            top: 483,
                            child: Container(
                              child: Container(
                                key: Key(
                                  "Rectangle 26 (202:17)",
                                ),
                                width: 79,
                                height: 23,
                                decoration: BoxDecoration(
                                  color: Color(
                                    0xff394a52,
                                  ),
                                ),
                              ),
                              width: 79,
                              height: 23,
                              decoration: BoxDecoration(
                                color: Color(
                                  0xff394a52,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 11,
                            top: 432,
                            child: SizedBox(
                              child: Text(
                                "OTHER",
                                key: Key(
                                  "OTHER (202:18)",
                                ),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Cairo",
                                  letterSpacing: 0.1,
                                ),
                              ),
                              width: 334,
                              height: 44,
                            ),
                          ),
                          Positioned(
                            left: 143,
                            top: 220,
                            child: Container(
                              child: Positioned(
                                left: 5.98,
                                top: 56.09,
                                child: Image.network(
                                  "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/8c0c432d-150a-450b-907b-176168ff9792",
                                  width: 91.96,
                                  height: 23.47,
                                  key: Key(
                                    "10,999 (202:23)",
                                  ),
                                ),
                              ),
                              width: 100,
                              height: 100,
                              padding: EdgeInsets.symmetric(),
                              decoration: BoxDecoration(),
                            ),
                          ),
                          Positioned(
                            left: 42,
                            top: 126,
                            child: Image.network(
                              "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/53aa6d6a-48f7-439c-84f5-85596bc34b8e",
                              width: 306,
                              height: 306,
                              key: Key(
                                "doughnut 1 (202:20)",
                              ),
                            ),
                          ),
                          Positioned(
                            left: 102,
                            top: 266,
                            child: Image.network(
                              "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/10c366c1-591c-46c1-a971-84689e954857",
                              width: 46.64,
                              height: 45,
                              key: Key(
                                "rupee (2) 1 (202:22)",
                              ),
                            ),
                          ),

                          /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                          Container(),
                        ],
                      ),
                    ),
                    width: 390,
                    height: 844,
                    padding: EdgeInsets.symmetric(),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                ),
                width: 390,
                height: 844,
                padding: EdgeInsets.symmetric(),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          padding: EdgeInsets.symmetric(),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
      );
    }));
  }
}
