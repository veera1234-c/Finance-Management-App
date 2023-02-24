import 'package:flutter/material.dart';

import '../constants/Appbarwidgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          title: TextAppBar('ADD PROFILE'),
          backgroundColor: Colors.deepPurple,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(
                      MediaQuery.of(context).size.width, 30))),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 12,
              ),
              Container(
                  height: MediaQuery.of(context).size.height / 3.3,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/add_profile_image.png',
                    fit: BoxFit.fitHeight,
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              Container(
                  child: Card(
                      elevation: 5,
                      color: Colors.deepPurpleAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: SizedBox(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: TextField(
                              cursorHeight: 30,
                              cursorColor: Colors.white,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  wordSpacing: 2,
                                  letterSpacing: 2),
                              decoration: InputDecoration(
                                hintText: 'Enter your name',
                                hintStyle: TextStyle(
                                    color: Colors.white70, fontSize: 16),
                                prefixIcon: Icon(Icons.person),
                                prefixIconColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.deepPurpleAccent)),
                              )),
                        ),
                      ))),
              SizedBox(
                height: 10,
              ),
              Container(
                  child: Card(
                      elevation: 5,
                      color: Colors.deepPurpleAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: SizedBox(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: TextField(
                              cursorHeight: 30,
                              cursorColor: Colors.white,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  wordSpacing: 2,
                                  letterSpacing: 2),
                              decoration: InputDecoration(
                                hintText: 'Enter PAN Card number',
                                hintStyle: TextStyle(
                                    color: Colors.white70, fontSize: 16),
                                prefixIcon: Icon(Icons.local_parking_sharp),
                                prefixIconColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.deepPurpleAccent)),
                              )),
                        ),
                      ))),
              SizedBox(
                height: 10,
              ),
              Container(
                  child: Card(
                      elevation: 5,
                      color: Colors.deepPurpleAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: SizedBox(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: TextField(
                              keyboardType: TextInputType.number,
                              cursorHeight: 30,
                              cursorColor: Colors.white,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  wordSpacing: 2,
                                  letterSpacing: 2),
                              decoration: InputDecoration(
                                hintText: 'Enter Aadhar Card number',
                                hintStyle: TextStyle(
                                    color: Colors.white70, fontSize: 16),
                                prefixIcon: Icon(Icons.payment_outlined),
                                prefixIconColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.deepPurpleAccent)),
                              )),
                        ),
                      ))),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 50,
                      child: InkWell(
                        onTap: () {},
                        child: Card(
                          elevation: 5,
                          color: Colors.redAccent[700],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: SizedBox(
                            child: Padding(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Center(
                                  child: Text(
                                    'Delete',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2),
                                  ),
                                )),
                          ),
                        ),
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 50,
                      child: InkWell(
                        onTap: () {},
                        child: Card(
                          elevation: 5,
                          color: Colors.greenAccent[700],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: SizedBox(
                            child: Padding(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Center(
                                  child: Text(
                                    'Save',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2),
                                  ),
                                )),
                          ),
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
