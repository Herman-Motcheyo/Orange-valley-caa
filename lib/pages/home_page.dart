import 'package:flutter/material.dart';
import 'package:orange_valley_caa/services/vide_api.dart';
import 'package:orange_valley_caa/utils/constants.dart';
import 'package:orange_valley_caa/utils/helper.dart';
import 'package:orange_valley_caa/widgets/video_grid.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      getVideoFromApi().then((value)=> print(value));
    return Scaffold(
      appBar: AppBar(
        title: Text('Orange Valley CAA'),
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(color: Colors.white)),
      body: Container(
        color: backgroundColor,
        child: VideosGrid(videos: getFakeVideos()),
      ),
    );
  }
}