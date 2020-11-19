import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Color bgColor;
  const BackgroundWidget({Key key, @required this.bgColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))),
      height: 260,
    );
  }
}
