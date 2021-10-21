import 'package:flutter/material.dart';
import 'package:music_world/providers/music_player.dart';
import 'package:music_world/screens/home_screen/create_your_ex_page.dart';
import 'package:music_world/screens/home_screen/musix_home.dart';
import 'package:music_world/screens/splash_screen/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
         providers: [
        ChangeNotifierProvider(create: (_) => MusicPlayerPlayer()),
      ],
        child: MusicHome(),
      ),
    );
  }
}
