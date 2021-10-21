import 'package:flutter/material.dart';
import 'package:music_world/screens/home_screen/widgets/bootm_nav_bar_item.dart';
import 'package:music_world/screens/utils/color_constrains.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.only(
        bottom: 8,
        top: 5,
      ),
      width: widget.size.width,
      height: 90,
      color: backGroundColor,
      // color: backGroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          BottomItm(
            iconName: 'music.svg',
            onTap: () {
                setState(() {
                index = 0;
              });
            },
            title: 'Music',
            unSelect: index==0,
            index: 0,
          ),
          BottomItm(
            iconName: 'file.svg',
            onTap: () {
                setState(() {
                index = 1;
              });
            },
            title: 'Library',
            unSelect: index==1,
            index: 1,
          ),
          BottomItm(
            iconName: 'hotList.svg',
            onTap: () {
                setState(() {
                index = 2;
              });
            },
            title: 'Hot List',
            unSelect: index==2,
            index: 3,
          ),
          BottomItm(
            iconName: 'user.svg',
            onTap: () {
              setState(() {
                index = 3;
              });
            },
            title: 'Account',
            unSelect: index == 3,
            index: 3,
          ),
        ],
      ),
    );
  }
}
