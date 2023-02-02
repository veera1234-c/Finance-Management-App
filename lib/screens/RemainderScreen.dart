import 'package:flutter/material.dart';
import '../constants/Appbarwidgets.dart';
import '../constants/textwidget_forhelpscreen.dart';

class ReminderScreen extends StatelessWidget {
  const ReminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var categoryname = [
      'PAY TAX',
      'ELECTRICITY BILL',
      'BOOK GAS CYLINDER',
      'RECHARGE DTH',
      'RECHARGE MOBILE',
      'CANCEL SUBSCRIPTIONS',
      'BOOK TICKET',
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          title: TextAppBar('REMINDERS'),
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
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 10),
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: CircleAvatar(
                        child: Icon(Icons.add),
                        backgroundColor: Colors.deepPurpleAccent,
                        radius: 30,
                      ),
                    ))),
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
                        onPressed: () {},
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
