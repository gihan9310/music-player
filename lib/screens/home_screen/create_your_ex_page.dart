import 'package:flutter/material.dart';
import 'package:music_world/common/cusom_lable.dart';
import 'package:music_world/common/custom_lable_regular.dart';
import 'package:music_world/screens/utils/assert_path.dart';
import 'package:music_world/screens/utils/color_constrains.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateYourExpiriance extends StatelessWidget {
  const CreateYourExpiriance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          height: size.height,
          width: size.width,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(IMAGE_PATH + "back_ground.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Container(
                width: size.width,
                height: size.height / 3.5,
                alignment: Alignment.topRight,
                child: Image.asset(IMAGE_PATH + "curcals.png"),
              ),
              SizedBox(
                height: size.height / 8.5,
              ),
              const CustomLable(
                title: 'Create your experience!',
                fontWeight: FontWeight.w600,
                fontSize: 33,
              ),
              SizedBox(
                height: size.height / 105,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 22, right: 25),
                child: CustomLableWithRegular(
                  title: 'Stream your favorite songs ON THE GO...',
                  fontSize: 22,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Container(
                  width: 109,
                  height: 42,
                  decoration: BoxDecoration(
                      color: fontPrimayColor,
                      borderRadius: BorderRadius.circular(30)),
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CustomLable(
                        title: 'LET’S GO',
                        fontWeight: FontWeight.w800,
                        fontSize: 17,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: size.height / 105,
                      ),
                      SvgPicture.asset(ICON_PATH + "go.svg"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 9,
              ),
              Expanded(
                child: Container(
                  width: size.width,
                  alignment: Alignment.bottomLeft,
                  child: Image.asset(IMAGE_PATH + "bootm_curcle.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
