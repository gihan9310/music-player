import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_world/screens/utils/color_constrains.dart';

class CustomLable extends StatelessWidget {
  const CustomLable({
    this.fontSize = 16,
    required this.title,
    this.fontWeight = FontWeight.normal,
    this.color =fontPrimayColor,
    Key? key,
  }) : super(key: key);

  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.mulish(
          color:color , fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
