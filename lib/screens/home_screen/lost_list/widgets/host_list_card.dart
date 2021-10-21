import 'package:flutter/material.dart';
import 'package:music_world/common/cusom_lable.dart';
import 'package:music_world/screens/utils/assert_path.dart';

class HotListCard extends StatelessWidget {
  const HotListCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 10,
      ),
      width: 172,
      height: 230,
      child: Column(
        children: [
          Container(
            width: 172,
            height: 172,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage(IMAGE_PATH + "burna.png"),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CustomLable(
            title: "Essence",
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
          CustomLable(
            title: "Burna Boy ft Don Jazzy",
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
