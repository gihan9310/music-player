import 'package:flutter/material.dart';
import 'package:music_world/common/custom_input.dart';
import 'package:music_world/screens/home_screen/nav_page/widgets/hot_list_details.dart';
import 'package:music_world/screens/home_screen/nav_page/widgets/music_selecte_options.dart';
import 'package:music_world/screens/home_screen/nav_page/widgets/music_slider.dart';

class SelectMusic extends StatelessWidget {
  const SelectMusic({
    Key? key,
    required this.controller,
    required this.size,
  }) : super(key: key);

  final TextEditingController controller;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MusicSlider(size: size),
        MusicSelectionOption(),
        // ignore: prefer_const_constructors
        HotListDetails(
          header: 'Hot List',
        ),
        // ignore: prefer_const_constructors
        HotListDetails(
          header: 'New Release',
        )
      ],
    );
  }
}
