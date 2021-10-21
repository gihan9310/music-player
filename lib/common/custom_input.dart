import 'package:flutter/material.dart';
import 'package:music_world/screens/utils/color_constrains.dart';

class CustomInuput extends StatelessWidget {
  const CustomInuput({
    required this.controller,
    this.icon,
    this.hintText,
    Key? key,
  }) : super(key: key);
  final controller;
  final IconData? icon;
  final hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: true,
        prefixIcon: Icon(icon ,color:iconColor,),
        hintText: hintText,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 2.0,
          horizontal: 2,
        ),
      ),
    );
  }
}
