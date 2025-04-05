import 'package:flutter/material.dart';
import 'package:orange_valley_caa/services/vide_api.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      getVideoFromApi().then((value)=> print(value));
    return Scaffold(
      appBar: AppBar(title: Text('Orange Valley CAA'),),
      body: Container(),
    );
  }
}