import 'package:flash_pay_app/widget/background_widget.dart';
import 'package:flash_pay_app/widget/balance_card.dart';
import 'package:flash_pay_app/widget/bottom_navigation.dart';
import 'package:flash_pay_app/widget/home_header.dart';
import 'package:flash_pay_app/widget/line_chart_sample1.dart';
import 'package:flash_pay_app/widget/transaction_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f7f8),
      bottomNavigationBar: BottomNavigation(),
      body: Stack(
        children: [
          BackgroundWidget(bgColor: Color(0xfff87607)),
          ListView(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: HomeHeader(),
                  ),
                  BalanceCard(),
                  SizedBox(height: 12),
                  LineChartSample1(),
                  SizedBox(height: 12),
                  TransactionWidget(),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
