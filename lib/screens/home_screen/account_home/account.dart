import 'package:flutter/material.dart';
import 'package:music_world/common/cusom_lable.dart';
import 'package:music_world/screens/home_screen/account_home/widgets/profile_picture.dart';
import 'package:music_world/screens/home_screen/library/widgets/libry_header.dart';
import 'package:music_world/screens/utils/assert_path.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_world/screens/utils/color_constrains.dart';

class AccountPage extends StatefulWidget {
  AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const LibryHeader(
            header: 'Account',
          ),
          const SizedBox(
            height: 40,
          ),
          const ProfilePicture(),
          const SizedBox(
            height: 60,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 40, right: 40, top: 40),
              width: size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: cardColorItem,
              ),
              child: Column(
                children: const [
                  OptionListItem(
                    icon: 'bell.svg',
                    name: 'Notifications',
                  ),
                  OptionListItem(
                    icon: 'globe.svg',
                    name: 'Language',
                  ),
                  OptionListItem(
                    icon: 'message-square.svg',
                    name: 'Contact Us',
                  ),
                  OptionListItem(
                    icon: 'help-circle.svg',
                    name: 'FAQs',
                  ),
                  OptionListItem(
                    icon: 'settings.svg',
                    name: 'Settings',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class OptionListItem extends StatelessWidget {
  const OptionListItem({
    required this.icon,
    required this.name,
    Key? key,
  }) : super(key: key);

  final String icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                ICON_PATH + icon,
                color: backGroundColor,
                height: 24,
                width: 24,
              ),
              const SizedBox(
                width: 15,
              ),
              // ignore: prefer_const_constructors
              CustomLable(
                title: name,
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black,
              )
            ],
          ),
          SvgPicture.asset(
            ICON_PATH + "goForword.svg",
            color: backGroundColor,
            height: 13.87,
            width: 9.92,
          ),
        ],
      ),
    );
  }
}
