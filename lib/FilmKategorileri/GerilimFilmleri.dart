import 'package:film_bilgi/Filmler/Film10.dart';
import 'package:film_bilgi/Filmler/Film11.dart';
import 'package:film_bilgi/Filmler/Film12.dart';
import 'package:film_bilgi/Filmler/Film9.dart';
import 'package:flutter/material.dart';

import '../MyWidget/My_DiziFilm_Button.dart';

class GerilimFilmleri extends StatefulWidget {
  const GerilimFilmleri({Key? key}) : super(key: key);

  @override
  State<GerilimFilmleri> createState() => _GerilimFilmleriState();
}

class _GerilimFilmleriState extends State<GerilimFilmleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Gerilim Filmleri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
                children: <Widget>[
                  My_DiziFilm_Button(
                    image: 'assets/resimler/film9.png',
                    page: Film9(),
                  ),
                  My_DiziFilm_Button(
                    image: 'assets/resimler/film10.png',
                    page: Film10(),
                  ),
                ]
            ),
            Row(
                children: <Widget>[
                  My_DiziFilm_Button(
                    image: 'assets/resimler/film11.png',
                    page: Film11(),
                  ),
                  My_DiziFilm_Button(
                    image: 'assets/resimler/film12.png',
                    page: Film12(),
                  ),
                ]
            ),
          ],
        ),
      ),

    );
  }
}
