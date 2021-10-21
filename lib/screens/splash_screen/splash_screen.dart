import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:music_world/screens/utils/assert_path.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      body: Container(
        alignment: Alignment.center,
        width: size.width,
        height: size.height,
        color: Colors.black,
        child: Container(
          height: 150,
          width: 150,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(IMAGE_PATH + 'Group 8.png'),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              height: 100,
              width: 100,
              child: SvgPicture.asset(ICON_PATH + "beatz.svg"),
            ),
          ),
        ),
      ),
    );
  }
}
