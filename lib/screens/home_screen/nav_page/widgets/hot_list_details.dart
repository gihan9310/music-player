import 'package:flutter/material.dart';
import 'package:music_world/screens/home_screen/nav_page/widgets/custom_alberm_card.dart';
import 'package:music_world/screens/home_screen/nav_page/widgets/see_more_header.dart';

class HotListDetails extends StatelessWidget {
  const HotListDetails({
    required this.header,
    Key? key,
  }) : super(key: key);

  final String header;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.0),
      child: Column(
        children: [
          SeeMoreHeader(title: header,),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomAlbermCard(),
              CustomAlbermCard(),
              CustomAlbermCard(),
            ],
          )
        ],
      ),
    );
  }
}
