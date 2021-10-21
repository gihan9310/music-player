import 'package:flutter/material.dart';
import 'package:music_world/common/cusom_lable.dart';
import 'package:music_world/screens/utils/assert_path.dart';
import 'package:music_world/screens/utils/color_constrains.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SeeMoreHeader extends StatelessWidget {
  const SeeMoreHeader({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // ignore: prefer_const_constructors
        CustomLable(
          title: title,
          color: grayUnselect,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        Row(
          children: [
            // ignore: prefer_const_constructors
            CustomLable(
              title: "see more",
              color: grayUnselect,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: SvgPicture.asset(
                ICON_PATH + 'forword.svg',
                color: grayUnselect,
              ),
            ),
          ],
        )
      ],
    );
  }
}
