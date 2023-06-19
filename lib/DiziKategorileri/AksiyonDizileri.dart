import 'package:film_bilgi/Diziler/Dizi1.dart';
import 'package:film_bilgi/Diziler/Dizi2.dart';
import 'package:film_bilgi/Diziler/Dizi3.dart';
import 'package:film_bilgi/Diziler/Dizi4.dart';
import 'package:film_bilgi/MyWidget/My_DiziFilm_Button.dart';
import 'package:flutter/material.dart';

class AksiyonDizileri extends StatefulWidget {
  const AksiyonDizileri({Key? key}) : super(key: key);

  @override
  State<AksiyonDizileri> createState() => _AksiyonDizileriState();
}

class _AksiyonDizileriState extends State<AksiyonDizileri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Aksiyon Dizileri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
                children: <Widget>[
                  My_DiziFilm_Button(
                    image: 'assets/resimler/dizi1.png',
                    page: Dizi1(),
                  ),
                  My_DiziFilm_Button(
                    image: 'assets/resimler/twd.png',
                    page: Dizi2(),
                  ),
                ]
            ),
            Row(
                children: <Widget>[
                  My_DiziFilm_Button(
                    image: 'assets/resimler/dizi3.png',
                    page: Dizi3(),
                  ),
                  My_DiziFilm_Button(
                    image: 'assets/resimler/dizi4.png',
                    page: Dizi4(),
                  ),
                ]
            ),
          ],
        ),
      ),

    );
  }
}
