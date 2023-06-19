import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/Listeler/Liste3.dart';
import 'package:film_bilgi/Listeler/Liste4.dart';
import 'package:film_bilgi/Listeler/Liste5.dart';
import 'package:film_bilgi/MyWidget/My_Listeler.dart';
import 'package:flutter/material.dart';

import 'Liste1.dart';
import 'Liste2.dart';

class Listeler extends StatefulWidget {
  const Listeler({Key? key}) : super(key: key);

  @override
  State<Listeler> createState() => _ListelerState();
}

class _ListelerState extends State<Listeler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("LİSTELER"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              My_Listeler(
                image: 'assets/resimler/encokizlenendisneyfilmleri.jpg',
                page: Liste1(),
                text: 'En Çok İzlenen Disney Plus Dizileri',
              ),
              My_Listeler(
                image: 'assets/resimler/kendinisevme.jpg',
                page: Liste2(),
                text: 'Kendinizi Sevmeyi Öğreten 10 Film',
              ),
              My_Listeler(
                image: 'assets/resimler/dügüntemalikomikfilmler.jpg',
                page: Liste3(),
                text: 'Düğün Temalı En Komik Filmler',
              ),
              My_Listeler(
                image: 'assets/resimler/blutv.jpg',
                page: Liste4(),
                text: 'Blu TV de İzlemeniz Gereken Yerli Diziler',
              ),
              My_Listeler(
                image: 'assets/resimler/eniyizombidizileri.jpg',
                page: Liste5(),
                text: 'Netflixdeki En İyi Zombi Dizileri',
              ),

            ],
          ),
        ),
      ),
    );
  }
}
