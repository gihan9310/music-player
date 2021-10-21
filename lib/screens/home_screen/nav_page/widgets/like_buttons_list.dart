import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_world/common/cusom_lable.dart';
import 'package:music_world/screens/utils/assert_path.dart';
import 'package:music_world/screens/utils/color_constrains.dart';

class LikeButtons extends StatelessWidget {
  const LikeButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ReactionButton(icon: "heart.svg",numberLikes: 37.4,),
        ReactionButton(icon: "share-2.svg",numberLikes: 37.4,),
        ReactionButton(icon: "message-square.svg",numberLikes: 37.4,),
        ReactionButton(icon: "download.svg",numberLikes: 37.4,),
      ],
    );
  }
}

class ReactionButton extends StatelessWidget {
  const ReactionButton({
    required this.icon,
    required this.numberLikes,
    Key? key,
  }) : super(key: key);

  final String icon;
  final double numberLikes;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          ICON_PATH + icon,
          color: fontPrimayColor,
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          width: 4,
        ),
        // ignore: prefer_const_constructors
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: CustomLable(
            title: "${numberLikes}k",
            fontSize: 9,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
