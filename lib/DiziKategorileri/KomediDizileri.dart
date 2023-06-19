import 'package:film_bilgi/Diziler/Dizi13.dart';
import 'package:film_bilgi/Diziler/Dizi14.dart';
import 'package:film_bilgi/Diziler/Dizi15.dart';
import 'package:film_bilgi/Diziler/Dizi16.dart';
import 'package:flutter/material.dart';

import '../MyWidget/My_DiziFilm_Button.dart';

class KomediDizileri extends StatefulWidget {
  const KomediDizileri({Key? key}) : super(key: key);

  @override
  State<KomediDizileri> createState() => _KomediDizileriState();
}

class _KomediDizileriState extends State<KomediDizileri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Komedi Dizileri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
                children: <Widget>[
                  My_DiziFilm_Button(
                    image: 'assets/resimler/dizi13.png',
                    page: Dizi13(),
                  ),
                  My_DiziFilm_Button(
                    image: 'assets/resimler/dizi14.png',
                    page: Dizi14(),
                  ),
                ]
            ),
            Row(
                children: <Widget>[
                  My_DiziFilm_Button(
                    image: 'assets/resimler/dizi15.png',
                    page: Dizi15(),
                  ),
                  My_DiziFilm_Button(
                    image: 'assets/resimler/dizi16.png',
                    page: Dizi16(),
                  ),
                ]
            ),
          ],
        ),
      ),

    );
  }
}
