import 'package:finance_management_app/screens/bankaccounts.dart';
import 'package:finance_management_app/screens/menupage.dart';
import 'package:finance_management_app/screens/otpscreen.dart';
import 'package:flutter/material.dart';
import 'constants/routes.dart';
import 'screens/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: OtpScreen(),
      initialRoute: Routes.loginScreen,
      routes: {
        Routes.loginScreen: (context) => loginpage(),
        Routes.otpScreen: (context) => OtpScreen(),
        Routes.menuScreen: (context) => Menu(),
        Routes.bankaccountScreen: (context) => BankAccounts(),
      },
    );
  }
}
