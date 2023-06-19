import 'package:film_bilgi/Filmler/Film1.dart';
import 'package:film_bilgi/Filmler/Film2.dart';
import 'package:film_bilgi/Filmler/Film3.dart';
import 'package:film_bilgi/Filmler/Film4.dart';
import 'package:flutter/material.dart';

import '../MyWidget/My_DiziFilm_Button.dart';

class AksiyonFilmleri extends StatefulWidget {
  const AksiyonFilmleri({Key? key}) : super(key: key);

  @override
  State<AksiyonFilmleri> createState() => _AksiyonFilmleriState();
}

class _AksiyonFilmleriState extends State<AksiyonFilmleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Aksiyon Filmleri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
                children: <Widget>[

                  My_DiziFilm_Button(
                    image: 'assets/resimler/film1.png',
                    page: Film1(),
                  ),
                  My_DiziFilm_Button(
                    image: 'assets/resimler/film2.png',
                    page: Film2(),
                  ),
                ]
            ),
            Row(
                children: <Widget>[
                  My_DiziFilm_Button(
                    image: 'assets/resimler/film3.png',
                    page: Film3(),
                  ),
                  My_DiziFilm_Button(
                    image: 'assets/resimler/film4.png',
                    page: Film4(),
                  ),
                ]
            ),
          ],
        ),
      ),

    );
  }
}
