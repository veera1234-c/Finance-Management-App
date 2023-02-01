import 'package:flutter/material.dart';
import '../../constants/routes.dart';
import 'Widgets_For_onboardings/buttons.dart';
import 'Widgets_For_onboardings/imageWidgets.dart';
import 'Widgets_For_onboardings/textWidget.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.deepPurple[600],
      body: Stack(children: [
        ImageTopUI(imagePath: 'assets/payment-reminder.png'),
        TextBottomUI(
          text: 'NEVER MISS A DEADLINE',
        ),
        SkipButton(
          buttonText: '>>>',
          navto: () => Navigator.pushNamed(context, Routes.loginScreen),
        ),
      ]),
    ));
  }
}
