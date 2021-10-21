import 'package:flutter/material.dart';
import 'package:music_world/common/cusom_lable.dart';
import 'package:music_world/screens/home_screen/library/widgets/library_top_list.dart';
import 'package:music_world/screens/home_screen/library/widgets/libry_header.dart';
import 'package:music_world/screens/home_screen/nav_page/widgets/title_custom_widget.dart';
import 'package:music_world/screens/utils/assert_path.dart';
import 'package:music_world/screens/utils/color_constrains.dart';

class LibaryHome extends StatefulWidget {
  LibaryHome({Key? key}) : super(key: key);

  @override
  _LibaryHomeState createState() => _LibaryHomeState();
}

class _LibaryHomeState extends State<LibaryHome> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            LibryHeader(header: 'Library',),
            SizedBox(
              height: 40,
            ),
            libraryScrollList(),
            SizedBox(
              height: 40,
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              // ignore: prefer_const_constructors
              child: CustomLable(
                title: "Recently Streamed",
                color: grayUnselect,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, i) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 84,
                          width: 84,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                IMAGE_PATH + "Mayorkun.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            CustomLable(
                              title: "Gospel Groove",
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomLable(
                              title: "75 songs",
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: grayUnselect,
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
