import 'package:flash_pay_app/model/transaction_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: getData().length,
        itemBuilder: (context, index) {
          return Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(getData()[index]
                      .imageUrl), // no matter how big it is, it won't overflow
                ),
                title: Text(getData()[index].type),
                subtitle: Text(
                  DateFormat('dd MMM yyyy')
                      .add_jms()
                      .format(getData()[index].date),
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: "JosefinSans",
                    color: Color(0xffdadada),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  "- \$" + getData()[index].amount.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xff696969)),
                ),
              ));
        });
  }
}
