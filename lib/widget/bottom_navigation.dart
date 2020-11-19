import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Color(0xff333333),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/home.png",
                  width: 30,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/wave.png",
                  width: 25,
                ),
                label: 'Activity'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/plane.png",
                  width: 25,
                ),
                label: 'Inbox'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/user.png",
                  width: 25,
                ),
                label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
