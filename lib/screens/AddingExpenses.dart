import 'package:flutter/material.dart';
import '../constants/Appbarwidgets.dart';
import '../constants/routes.dart';
import '../constants/textwidget_forhelpscreen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var categoryname = [
      'OTHERS',
      'SHOPPING',
      'DINNING',
      'TRAVELLING',
      'GROCERIES',
      'ACADEMICS',
      'BILLS',
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          title: TextAppBar('CATEGORY'),
          backgroundColor: Colors.deepPurple,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(
                      MediaQuery.of(context).size.width, 30))),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          verticalDirection: VerticalDirection.down,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3.2,
            ),
            Flexible(
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  reverse: true,
                  itemBuilder: (context, index) {
                    return ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.helpScreen);
                        },
                        child: Card(
                          child: Center(child: TextList(categoryname[index])),
                          elevation: 5,
                          color: Colors.deepPurpleAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ));
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 3,
                      thickness: 5,
                    );
                  },
                  itemCount: categoryname.length),
            ),
          ],
        ),
      ),
    );
  }
}
