import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_world/screens/utils/color_constrains.dart';

class CustomLableWithRegular extends StatelessWidget {
  const CustomLableWithRegular({
    this.fontSize = 16,
    required this.title,
    this.fontWeight = FontWeight.normal,
    Key? key,
  }) : super(key: key);

  final String title;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
          color: fontPrimayColor, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
