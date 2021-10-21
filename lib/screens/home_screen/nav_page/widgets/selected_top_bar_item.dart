import 'package:flutter/material.dart';
import 'package:music_world/common/cusom_lable.dart';
import 'package:music_world/screens/utils/assert_path.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectedTopBarItem extends StatelessWidget {
  const SelectedTopBarItem({
    required this.color,
    required this.iconName,
    required this.index,
    required this.onTap,
    required this.title,
    required this.fontSize,
    required this.fontColor,
    Key? key,
  }) : super(key: key);

  final String title;
  final String iconName;
  final int index;
  final Function() onTap;
  final Color color;
  final double fontSize;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Column(
          children: [
            CustomLable(
              title: title,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: fontColor,
            ),
            SvgPicture.asset(
              ICON_PATH + iconName,
              color: color,
            ),
          ],
        ),
      ),
    );
  }
}
