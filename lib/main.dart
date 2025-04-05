import 'package:flutter/material.dart';
import 'package:orange_valley_caa/pages/home_page.dart';
void main() {
  runApp(ValleyOrangeApp());
}

class ValleyOrangeApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomePage(),
      );
    }
  }