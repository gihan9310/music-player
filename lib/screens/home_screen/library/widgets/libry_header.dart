import 'package:flutter/material.dart';
import 'package:music_world/common/cusom_lable.dart';
import 'package:music_world/screens/utils/color_constrains.dart';

class LibryHeader extends StatelessWidget {
  const LibryHeader({
    required this.header,
    Key? key,
  }) : super(key: key);

  final String header;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Icon(
            Icons.arrow_back,
            color: grayUnselect,
            size: 24,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  // ignore: prefer_const_constructors
                  child: CustomLable(
                    title: header,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
