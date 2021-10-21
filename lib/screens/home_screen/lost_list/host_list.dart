import 'package:flutter/material.dart';
import 'package:music_world/common/cusom_lable.dart';
import 'package:music_world/screens/home_screen/library/widgets/libry_header.dart';
import 'package:music_world/screens/home_screen/lost_list/widgets/host_list_card.dart';
import 'package:music_world/screens/utils/assert_path.dart';
import 'package:music_world/screens/utils/color_constrains.dart';

class HotListHome extends StatefulWidget {
  HotListHome({Key? key}) : super(key: key);

  @override
  _HotListHomeState createState() => _HotListHomeState();
}

class _HotListHomeState extends State<HotListHome> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            SizedBox(
              height: 40,
            ),
            LibryHeader(
              header: 'Hot List',
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: CustomLable(
                title: "Last 24 hours",
                fontSize: 18,
                color: grayUnselect,
                fontWeight: FontWeight.bold,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: const [
                    HotListCard(),
                    HotListCard(),
                    HotListCard(),
                    HotListCard(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: CustomLable(
                title: "Last 7 days",
                fontSize: 18,
                color: grayUnselect,
                fontWeight: FontWeight.bold,
              ),
            ),
                 SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: const [
                    HotListCard(),
                    HotListCard(),
                    HotListCard(),
                    HotListCard(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
