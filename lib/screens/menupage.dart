import 'package:finance_management_app/constants/colors.dart';
import 'package:flutter/material.dart';

import '../constants/routes.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 110,
              child: Center(
                child: Text(
                  "MENU",
                  style: TextStyle(
                    fontFamily: "Cairo",
                    color: Colors.white,
                    fontSize: 34,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: MyColors.ThemeColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                    bottomRight: Radius.circular(80)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: Center(
                child: Text(
                  "YOUR MONTHLY EXPENSE: 10,999 ",
                  style: TextStyle(
                      fontFamily: "Semibold",
                      color: Color(0xFF2411B8),
                      fontSize: 20),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xFFDBDEF5),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.bankaccountScreen);
                  },
                  child:
                      Image.asset("assets/bank.png", height: 146, width: 149),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.bankaccountScreen);
                  },
                  child: Image.asset("assets/budgetReport.png",
                      height: 146, width: 149),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.RemainderScreen);
                  },
                  child: Image.asset("assets/remainders.png",
                      height: 146, width: 149),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.Expenses_Screen);
                  },
                  child: Image.asset("assets/transactions.png",
                      height: 146, width: 149),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.profilepageScreen);
                  },
                  child: Image.asset("assets/Profile.png",
                      height: 146, width: 149),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.helpScreen);
                  },
                  child:
                      Image.asset("assets/help.png", height: 146, width: 149),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
