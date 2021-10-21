import 'package:flutter/material.dart';
import 'package:music_world/common/cusom_lable.dart';
import 'package:music_world/common/custom_input.dart';
import 'package:music_world/providers/music_player.dart';
import 'package:music_world/screens/home_screen/nav_page/widgets/custom_alberm_card.dart';
import 'package:music_world/screens/home_screen/nav_page/widgets/hot_list_details.dart';
import 'package:music_world/screens/home_screen/nav_page/widgets/like_buttons_list.dart';
import 'package:music_world/screens/home_screen/nav_page/widgets/music_selecte_options.dart';
import 'package:music_world/screens/home_screen/nav_page/widgets/music_slider.dart';
import 'package:music_world/screens/home_screen/nav_page/widgets/see_more_header.dart';
import 'package:music_world/screens/home_screen/nav_page/widgets/select_music.dart';
import 'package:music_world/screens/home_screen/nav_page/widgets/selected_top_bar_item.dart';
import 'package:music_world/screens/utils/assert_path.dart';
import 'package:music_world/screens/utils/color_constrains.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

class MusicHomeManager extends StatefulWidget {
  MusicHomeManager({Key? key}) : super(key: key);

  @override
  _MusicHomeManagerState createState() => _MusicHomeManagerState();
}

class _MusicHomeManagerState extends State<MusicHomeManager> {
  int index = 0;
  bool isRecomanded = false;

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        width: size.width,
        padding: const EdgeInsets.only(
          top: 35,
          left: 30,
          right: 15,
        ),
        child: Column(
          children: [
            Row(
              children: [
                SelectedTopBarItem(
                  color: index == 0 ? fontPrimayColor : backGroundColor,
                  iconName: 'selected.svg',
                  index: 0,
                  onTap: () {
                    setState(() {
                      index = 0;
                      isRecomanded = false;
                    });
                  },
                  title: 'Music ',
                  fontSize: 30,
                  fontColor: index == 0 ? fontPrimayColor : grayUnselect,
                ),
                const SizedBox(
                  width: 10,
                ),
                SelectedTopBarItem(
                  color: index == 1 ? fontPrimayColor : backGroundColor,
                  iconName: 'selected.svg',
                  index: 0,
                  onTap: () {
                    setState(() {
                      index = 1;
                      isRecomanded = true;
                    });
                  },
                  title: 'Recommended',
                  fontSize: 24,
                  fontColor: index == 1 ? fontPrimayColor : grayUnselect,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 25),
              margin: EdgeInsets.only(top: 20),
              child: CustomInuput(
                controller: controller,
                icon: Icons.search,
              ),
            ),
            if (!isRecomanded) SelectMusic(controller: controller, size: size),
            if (isRecomanded)
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, i) {
                  return MusicCardListItem();
                },
              )
          ],
        ),
      ),
    );
  }
}

class MusicCardListItem extends StatelessWidget {
  const MusicCardListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MusicPlayerPlayer provider =
        Provider.of<MusicPlayerPlayer>(context, listen: true);
    return Container(
      margin: EdgeInsets.only(top: 5),
      height: 76,
      width: 364,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        // color: cardColorItem,
      ),
      child: InkWell(
        onTap: () {
          provider.isShowPlayer = true;
        },
        child: Container(
          child: Row(
            children: [
              Container(
                height: 76,
                width: 76,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  // ignore: prefer_const_constructors
                  image: DecorationImage(
                    image: AssetImage(IMAGE_PATH + "test_img.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                width: 250,
                //  color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomLable(
                      title: "Let Me Know",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomLable(
                            title: "Wizkid ft Tems,Justin Bieber",
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: SvgPicture.asset(
                              ICON_PATH + "play-circle.svg",
                              color: fontPrimayColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    LikeButtons()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
