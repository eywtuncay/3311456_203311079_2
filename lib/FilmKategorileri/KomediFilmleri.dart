import 'package:film_bilgi/Filmler/Film13.dart';
import 'package:film_bilgi/Filmler/Film14.dart';
import 'package:film_bilgi/Filmler/Film15.dart';
import 'package:film_bilgi/Filmler/Film16.dart';
import 'package:flutter/material.dart';

import '../MyWidget/My_DiziFilm_Button.dart';

class KomediFilmleri extends StatefulWidget {
  const KomediFilmleri({Key? key}) : super(key: key);

  @override
  State<KomediFilmleri> createState() => _KomediFilmleriState();
}

class _KomediFilmleriState extends State<KomediFilmleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Komedi Filmleri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
                children: <Widget>[

                  My_DiziFilm_Button(
                    image: 'assets/resimler/film13.png',
                    page: Film13(),
                  ),
                  My_DiziFilm_Button(
                    image: 'assets/resimler/film14.png',
                    page: Film14(),
                  ),

                ]
            ),
            Row(
                children: <Widget>[
                  My_DiziFilm_Button(
                    image: 'assets/resimler/film15.png',
                    page: Film15(),
                  ),
                  My_DiziFilm_Button(
                    image: 'assets/resimler/film16.png',
                    page: Film16(),
                  ),
                ]
            ),
          ],
        ),
      ),

    );
  }
}
