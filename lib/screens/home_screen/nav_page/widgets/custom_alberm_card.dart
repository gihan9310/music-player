import 'package:flutter/material.dart';
import 'package:music_world/common/cusom_lable.dart';
import 'package:music_world/screens/utils/assert_path.dart';
import 'package:music_world/screens/utils/color_constrains.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAlbermCard extends StatelessWidget {
  const CustomAlbermCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              height: 108,
              width: 108,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  15.0,
                ),
                // ignore: prefer_const_constructors
                image: DecorationImage(
                  image: const AssetImage(
                      IMAGE_PATH + 'Mayorkun-let-me-know-mp3 1.png'),
                ),
                color: fillColor,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                padding: EdgeInsets.all(5),
                width: 60,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: cardColorItem,
                ),
                
                child: Row(
                  children: [
                    Image.asset(ICON_PATH+ "ear 1.png"),
                    SizedBox(width: 5,),
                    CustomLable(title: "123.6K",fontSize: 7,color: backGroundColor,fontWeight: FontWeight.bold,)
                  ],
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        const CustomLable(
          title: "Gospel Groove",
          color: fontPrimayColor,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        )
      ],
    );
  }
}
