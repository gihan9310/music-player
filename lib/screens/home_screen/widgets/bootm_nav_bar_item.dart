import 'package:flutter/material.dart';
import 'package:music_world/common/cusom_lable.dart';
import 'package:music_world/screens/utils/assert_path.dart';
import 'package:music_world/screens/utils/color_constrains.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomItm extends StatelessWidget {
  const BottomItm(
      {required this.iconName,
      required this.onTap,
      this.unSelect = false,
      required this.title,
      this.index =0,
      Key? key})
      : super(key: key);

  final Function() onTap;
  final String iconName;
  final bool unSelect;
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backGroundColor,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              ICON_PATH + iconName,
              color: unSelect ? fontPrimayColor : grayUnselect,
              height:35 ,
              width: 35,
            ),
            CustomLable(
              title: title,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: unSelect ? fontPrimayColor : grayUnselect,
            ),
          ],
        ),
      ),
    );
  }
}
