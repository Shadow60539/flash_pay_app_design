import 'package:flash_pay_app/widget/background_widget.dart';
import 'package:flash_pay_app/widget/bottom_navigation.dart';
import 'package:flash_pay_app/widget/transaction_header.dart';
import 'package:flash_pay_app/widget/transaction_list.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({
    Key key,
  }) : super(key: key);

  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class FilterCriteria {
  String type;
  bool isSelected;

  FilterCriteria(this.type, this.isSelected);
}

class _TransactionScreenState extends State<TransactionScreen> {
  List<FilterCriteria> _filter = List<FilterCriteria>();
  @override
  void initState() {
    super.initState();
    _filter.addAll([
      FilterCriteria("All", false),
      FilterCriteria("Subscription", true),
      FilterCriteria("Purchases", false),
      FilterCriteria("Transfers", false),
      FilterCriteria("Loan", false)
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f7f8),
      bottomNavigationBar: BottomNavigation(),
      body: Stack(
        children: [
          BackgroundWidget(bgColor: Color(0xff333333)),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
            child: Column(
              children: [
                SizedBox(height: 30),
                TransactionHeader(),
                SizedBox(height: 20),
                Container(
                    height: 40,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _filter.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: () {
                                setState(() {
                                  _filter.forEach((element) {
                                    element.isSelected = false;
                                  });
                                  _filter[index].isSelected = true;
                                });
                              },
                              child: Container(
                                  margin: EdgeInsets.only(right: 16),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(14),
                                        right: Radius.circular(14)),
                                    image: _filter[index].isSelected
                                        ? DecorationImage(
                                            image: AssetImage(
                                                "assets/images/selected-bg.png"),
                                            fit: BoxFit.cover,
                                          )
                                        : null,
                                  ),
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    _filter[index].type,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )));
                        })),
                Expanded(
                  child: TransactionList(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
