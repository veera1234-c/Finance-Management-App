import 'package:flutter/material.dart';
import '../constants/Appbarwidgets.dart';
import '../constants/routes.dart';

class ExpensesScreen extends StatelessWidget {
  const ExpensesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var transaction = ['Paneer', 'Souvenier', 'Sugar', 'Flipkart'];
    var amount = [45, 322, 8754, 78, 4500];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          title: TextAppBar('EXPENSES'),
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
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.Addingexpenses);
                      },
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
                          child: Center(
                              child: ListTile(
                            title: Text(
                              transaction[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  letterSpacing: 2),
                            ),
                            subtitle: Text(
                              'Amount: ${amount[index]} rs ',
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16),
                            ),
                            leading: Text(
                              '${index + 1}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            trailing: Icon(
                              Icons.delete_forever,
                              color: Colors.white,
                            ),
                          )),
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
                  itemCount: transaction.length),
            ),
          ],
        ),
      ),
    );
  }
}
