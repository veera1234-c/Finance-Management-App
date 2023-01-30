import 'dart:html';

import 'package:finance_management_app/screens/otpscreen.dart';
import 'package:flutter/material.dart';
import 'screens/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OtpScreen(),
    );
  }
}
