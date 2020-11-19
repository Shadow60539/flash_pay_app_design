import 'package:flutter/material.dart';
import 'custom_switch.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage("assets/images/balance-bg.png"),
            fit: BoxFit.fill,
          )),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your Balance",
                    style: new TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "JosefinSans",
                    )),
                SizedBox(height: 10),
                Text("\$ 5,508.40",
                    style: new TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "JosefinSans",
                    )),
              ],
            ),
            Row(
              children: [
                CustomSwitch(
                    value: true, activeColor: Colors.white, onChanged: null),
                SizedBox(width: 8),
                Text("Active",
                    style: new TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontFamily: "JosefinSans",
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
