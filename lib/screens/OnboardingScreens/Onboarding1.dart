import "package:flutter/material.dart";
import '../../constants/routes.dart';
import 'Widgets_For_onboardings/buttons.dart';
import 'Widgets_For_onboardings/imageWidgets.dart';
import 'Widgets_For_onboardings/textWidget.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.deepPurple[600],
      body: Stack(children: [
        ImageTopUI(imagePath: 'assets/expenses_screen.png'),
        TextBottomUI(
          text: 'GET ALL YOUR EXPENSES AT ONE PLACE',
        ),
        SkipButton(
            buttonText: '>>>',
            navto: () =>
                Navigator.pushNamed(context, Routes.onboarding1Screen)),
      ]),
    ));
  }
}
