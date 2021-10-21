import 'package:flutter/material.dart';
import 'package:music_world/common/cusom_lable.dart';
import 'package:music_world/screens/utils/assert_path.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_world/screens/utils/color_constrains.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 172,
          height: 172,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(IMAGE_PATH + "Group 8.png"),
            ),
          ),
          child: Container(
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              // ignore: prefer_const_constructors
              image: DecorationImage(
                image: AssetImage(IMAGE_PATH + "user.png"),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: prefer_const_constructors
            CustomLable(
              title: "Gihan",
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            SizedBox(
              width: 5,
            ),
            SvgPicture.asset(
              ICON_PATH + "edit.svg",
              color: fontPrimayColor,
            ),
          ],
        )
      ],
    );
  }
}
