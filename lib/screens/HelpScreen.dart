import 'package:flutter/material.dart';
import '../constants/textwidget_forhelpscreen.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var names = ['CONTACT US', 'EMAIL US', 'CHAT WITH US'];
    var icons = [Icons.call, Icons.attach_email_rounded, Icons.message_rounded];
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                color: Colors.white,
                child: Image.asset(
                  'assets/help.jpg',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    child: Text(
                      'HOW MAY I HELP YOU ?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'OnBoardingFont',
                          letterSpacing: 2,
                          wordSpacing: 3,
                          height: 1.5),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.38,
            color: Colors.white,
            child: ListView.separated(
                reverse: true,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    color: Colors.deepPurpleAccent,
                    child: ListTile(
                      leading: Icon(icons[index]),
                      title: TextList(names[index]),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 5,
                    thickness: 10,
                    color: Colors.white,
                  );
                },
                itemCount: names.length),
          )
        ],
      ),
    ));
  }
}
