import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Icon(
                    LineAwesomeIcons.arrow_left,
                    size: 22.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                Text("Transactions",
                    style: new TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "JosefinSans",
                    )),
              ],
            ),
            Icon(
              LineAwesomeIcons.clock_o,
              size: 25.0,
              color: Colors.white,
            )
          ],
        ));
  }
}
