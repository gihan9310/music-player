import 'package:flutter/material.dart';
import 'package:music_world/screens/home_screen/nav_page/widgets/title_custom_widget.dart';

class libraryScrollList extends StatelessWidget {
  const libraryScrollList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children:const [
            TileCustomWidget(icon: "download-large.svg", name: "downloads",width: 84,height: 84,fontSize:15.0 ,),
            TileCustomWidget(icon: "playlist_01.svg", name: "playlists",width: 84,height: 84,fontSize:15.09,),
            TileCustomWidget(icon: "heart01.svg", name: "favorites",width: 84,height: 84,fontSize:15.09,),
            TileCustomWidget(icon: "Vector.svg", name: "local files",width: 84,height: 84,fontSize:15.09,),
          ],
        ),
      ),
    );
  }
}

