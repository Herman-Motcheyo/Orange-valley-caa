import 'package:flutter/material.dart';
import 'package:orange_valley_caa/services/vide_api.dart';
import 'package:orange_valley_caa/utils/constants.dart';
import 'package:orange_valley_caa/utils/helper.dart';
import 'package:orange_valley_caa/widgets/video_grid.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orange Valley CAA'),
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(color: Colors.white)),
      body: Container(
        color: backgroundColor,
        child: FutureBuilder(
          future: getVideoFromApi(), // pour indiquer la façon de récupérer les données
          builder: (context, snapshot) { //Si l'acceptation  de la requête est en cours est autorisee
            if (snapshot.connectionState == ConnectionState.waiting)
              return Center(child: CircularProgressIndicator());//Renvoyer un indicateur de progression circulaire
            // Si la requête a échoué, afficher un message d'erreur
            else if (snapshot.hasError) // Si la requête a échoué, afficher un message d'erreur
              // Si la requête a échoué, afficher un message d'erreur
              return Center(child: Text(snapshot.error.toString()));
            else // Si la requête a réussi, afficher la liste des vidéos
              return VideosGrid(videos: snapshot.data ?? []);
          },
      ),)
    );
  }
}