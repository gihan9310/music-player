import 'package:flutter/material.dart';
import 'package:music_world/providers/music_player.dart';
import 'package:music_world/screens/home_screen/account_home/account.dart';
import 'package:music_world/screens/home_screen/library/libry_home.dart';
import 'package:music_world/screens/home_screen/lost_list/host_list.dart';
import 'package:music_world/screens/home_screen/nav_page/music_page_home.dart';
import 'package:music_world/screens/home_screen/widgets/bootm_nav_bar_item.dart';
import 'package:music_world/screens/home_screen/widgets/bottom_music_player.dart';
import 'package:music_world/screens/utils/color_constrains.dart';
import 'package:provider/provider.dart';

class MusicHome extends StatefulWidget {
  const MusicHome({Key? key}) : super(key: key);

  @override
  State<MusicHome> createState() => _MusicHomeState();
}

class _MusicHomeState extends State<MusicHome> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    MusicPlayerPlayer provider =
        Provider.of<MusicPlayerPlayer>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: backGroundColor,
        bottomNavigationBar: Container(
          // ignore: prefer_const_constructors

          width: size.width,
          height: provider.isShowPlayer ? 173 : 90,
          color: backGroundColor,
          // color: backGroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (provider.isShowPlayer != false) BottomMusicPlayar(),
              Container(
                width: size.width,
                height: 90,
                // ignore: prefer_const_constructors
                padding: EdgeInsets.only(
                  bottom: 8,
                  top: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    BottomItm(
                      iconName: 'music.svg',
                      onTap: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      title: 'Music ${provider.isShowPlayer}',
                      unSelect: index == 0,
                      index: 0,
                    ),
                    BottomItm(
                      iconName: 'file.svg',
                      onTap: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      title: 'Library',
                      unSelect: index == 1,
                      index: 1,
                    ),
                    BottomItm(
                      iconName: 'hotList.svg',
                      onTap: () {
                        setState(() {
                          index = 2;
                        });
                      },
                      title: 'Hot List',
                      unSelect: index == 2,
                      index: 3,
                    ),
                    BottomItm(
                      iconName: 'user.svg',
                      onTap: () {
                        setState(() {
                          index = 3;
                        });
                      },
                      title: 'Account',
                      unSelect: index == 3,
                      index: 3,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: index == 0
            ? MusicHomeManager()
            : index == 1
                ? LibaryHome()
                : index == 2
                    ? HotListHome()
                    : AccountPage(),
        // body: Container(width: size.width,height: size.height,)
      ),
    );
  }
}


