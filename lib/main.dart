import 'package:finance_management_app/screens/OnboardingScreens/Onboarding1.dart';
import 'package:finance_management_app/screens/bankaccounts.dart';
import 'package:finance_management_app/screens/menupage.dart';
import 'package:finance_management_app/screens/otpscreen.dart';
import 'package:flutter/material.dart';
import 'constants/routes.dart';
import 'screens/AddingAccounts.dart';
import 'screens/AddingExpenses.dart';
import 'screens/HelpScreen.dart';
import 'screens/OnboardingScreens/Onboarding2.dart';
import 'screens/OnboardingScreens/Onboarding3.dart';
import 'screens/ProfileScreen.dart';
import 'screens/RemainderScreen.dart';
import 'screens/expensesScreen.dart';
import 'screens/loginpage.dart';
import 'screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: OtpScreen(),
      initialRoute: Routes.splashScreen,
      routes: {
        Routes.splashScreen: (context) => SplashScreen(),
        Routes.onboardingScreen: (context) => OnBoarding(),
        Routes.onboarding1Screen: (context) => OnBoarding1(),
        Routes.onboarding2Screen: ((context) => OnBoarding2()),
        Routes.loginScreen: (context) => loginpage(),
        Routes.otpScreen: (context) => OtpScreen(),
        Routes.menuScreen: (context) => Menu(),
        Routes.bankaccountScreen: (context) => BankAccounts(),
        Routes.AddingAccountScreen: (context) => AccountScreen(),
        Routes.RemainderScreen: (context) => ReminderScreen(),
        Routes.Expenses_Screen: (context) => ExpensesScreen(),
        Routes.Addingexpenses: (context) => CategoryScreen(),
        Routes.profilepageScreen: (context) => ProfileScreen(),
        Routes.helpScreen: (context) => HelpScreen(),
      },
    );
  }
}
