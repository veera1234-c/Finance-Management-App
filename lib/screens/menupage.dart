import 'package:finance_management_app/constants/colors.dart';
import 'package:flutter/material.dart';

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
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 170,
              child: Center(
                child: Text(
                  "MENU",
                  style: TextStyle(
                    fontFamily: "Inter-Bold",
                    color: Colors.white,
                    //fontSize: 34,
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
            Text(
              "MENU",
              style: TextStyle(color: Colors.black, fontSize: 34),
            ),
          ],
        )),
      ),
    );
  }
}
