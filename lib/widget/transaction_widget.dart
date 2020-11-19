import 'package:flash_pay_app/screen/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Transactions",
                        style: new TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "JosefinSans",
                        )),
                    Container(
                        padding: const EdgeInsets.all(0.0),
                        decoration: BoxDecoration(
                          color: Color(0xFF04c5ba),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: FlatButton(
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => TransactionScreen())),
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "View all",
                                    style: new TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "JosefinSans",
                                    ),
                                  ),
                                  Icon(
                                    Icons.chevron_right_sharp,
                                    color: Colors.white,
                                    size: 30.0,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              ListTile(
                  leading: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF505c8b),
                          borderRadius: BorderRadius.circular(100)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          LineAwesomeIcons.money,
                          size: 20.0,
                          color: Colors.white,
                        ),
                      )),
                  title: RichText(
                    text: new TextSpan(
                      style: new TextStyle(
                        fontSize: 16.0,
                        color: Color(0xFF6a6a6a),
                        fontFamily: "JosefinSans",
                      ),
                      children: <TextSpan>[
                        new TextSpan(text: 'You have spent '),
                        new TextSpan(
                            text: '\$4,927.92',
                            style: new TextStyle(
                                color: Color(0xFFf87607),
                                fontSize: 15,
                                fontFamily: "JosefinSans",
                                fontWeight: FontWeight.bold)),
                        new TextSpan(text: ' funds over '),
                        new TextSpan(
                            text: '15 days',
                            style: new TextStyle(
                                fontFamily: "JosefinSans",
                                color: Color(0xFFf87607),
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}
