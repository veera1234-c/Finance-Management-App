import 'package:finance_management_app/constants/colors.dart';
import 'package:flutter/material.dart';
import '../../constants/routes.dart';
import 'Widgets_For_onboardings/buttons.dart';
import 'Widgets_For_onboardings/imageWidgets.dart';
import 'Widgets_For_onboardings/textWidget.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: MyColors.ThemeColor,
      body: Stack(children: [
        ImageTopUI(imagePath: 'assets/budget_screen.png'),
        TextBottomUI(text: 'GET DETAILED REPORT ON EXPENSES'),
        SkipButton(
            buttonText: '>>>',
            navto: () =>
                Navigator.pushNamed(context, Routes.onboarding2Screen)),
      ]),
    ));
  }
}
