import 'package:flutter/material.dart';
import 'package:orange_valley_caa/models/video.dart';
import 'package:orange_valley_caa/pages/detail_page.dart';
import 'package:orange_valley_caa/pages/home_page.dart';
import 'package:orange_valley_caa/utils/helper.dart';
void main() {
  runApp(ValleyOrangeApp());
}

class ValleyOrangeApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    );
  }
  }