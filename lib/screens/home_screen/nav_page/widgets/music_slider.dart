import 'package:flutter/material.dart';
import 'package:music_world/screens/utils/color_constrains.dart';

class MusicSlider extends StatelessWidget {
  const MusicSlider({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: size.width,
      height: 111,
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: cardColor,
      ),
    );
  }
}
