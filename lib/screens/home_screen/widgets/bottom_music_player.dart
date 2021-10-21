import 'package:flutter/material.dart';
import 'package:primary_secondary_progress_bar/primary_secondary_progress_bar.dart';
import 'package:music_world/screens/utils/assert_path.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:progresso/progresso.dart';

class BottomMusicPlayar extends StatelessWidget {
  const BottomMusicPlayar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 83,
      color: Colors.amberAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Progresso(
            progress: 0.8,
            points: [0.8],
            pointColor: Colors.blue,
            pointInnerColor: Colors.black,
            backgroundStrokeWidth: 3,
            progressStrokeWidth: 4,
          ),
          Row(
            children: [
              Container(
                height: 62,
                width: 62,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(IMAGE_PATH + "dunsin oyekan 1.png"),
                    fit: BoxFit.cover
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
