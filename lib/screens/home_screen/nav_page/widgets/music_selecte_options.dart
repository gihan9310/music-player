import 'package:flutter/material.dart';
import 'package:music_world/screens/home_screen/nav_page/widgets/title_custom_widget.dart';

class MusicSelectionOption extends StatelessWidget {
  const MusicSelectionOption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25),
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Row(
          children: const [
            TileCustomWidget(
              icon: 'charts.svg',
              name: 'charts',
            ),
             TileCustomWidget(
              icon: 'artists.svg',
              name: 'artists',
            ),
             TileCustomWidget(
              icon: 'albums.svg',
              name: 'albums',
            ),
             TileCustomWidget(
              icon: 'playlists.svg',
              name: 'playlists',
            ),
             TileCustomWidget(
              icon: 'music.svg',
              name: 'genre',
            ),
          ],
        ),
      ),
    );
  }
}
