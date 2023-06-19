import 'package:film_bilgi/Diziler/Dizi10.dart';
import 'package:film_bilgi/Diziler/Dizi11.dart';
import 'package:film_bilgi/Diziler/Dizi12.dart';
import 'package:film_bilgi/Diziler/Dizi9.dart';
import 'package:flutter/material.dart';

import '../MyWidget/My_DiziFilm_Button.dart';

class GerilimDizileri extends StatefulWidget {
  const GerilimDizileri({Key? key}) : super(key: key);

  @override
  State<GerilimDizileri> createState() => _GerilimDizileriState();
}

class _GerilimDizileriState extends State<GerilimDizileri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Gerilim Dizileri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
                children: <Widget>[
                  My_DiziFilm_Button(
                    image: 'assets/resimler/dizi9.png',
                    page: Dizi9(),
                  ),
                  My_DiziFilm_Button(
                    image: 'assets/resimler/dizi10.png',
                    page: Dizi10(),
                  ),
                ]
            ),
            Row(
                children: <Widget>[
                  My_DiziFilm_Button(
                    image: 'assets/resimler/dizi11.png',
                    page: Dizi11(),
                  ),
                  My_DiziFilm_Button(
                    image: 'assets/resimler/dizi12.png',
                    page: Dizi12(),
                  ),
                ]
            ),
          ],
        ),
      ),

    );
  }
}
