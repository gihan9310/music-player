import 'package:flutter/material.dart';
import 'package:music_world/common/cusom_lable.dart';
import 'package:music_world/screens/utils/color_constrains.dart';
import 'package:music_world/screens/utils/assert_path.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TileCustomWidget extends StatelessWidget {
  const TileCustomWidget({
    required this.icon,
    required this.name,
    this.height = 64,
    this.width = 64,
    this.fontSize = 14,
    Key? key,
  }) : super(key: key);

  final String icon;
  final String name;
  final double height;
  final double width;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: backGroundColor,
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: [
          // ignore: prefer_const_constructors
          BoxShadow(
            color: fontPrimayColor,
            spreadRadius: 2,
            blurRadius: 1,
            offset: Offset(1, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            ICON_PATH + icon,
            color: fontPrimayColor,
          ),
          SizedBox(
            height: 5,
          ),
          // ignore: prefer_const_constructors
          CustomLable(
            title: name,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
