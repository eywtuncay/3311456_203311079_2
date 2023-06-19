import 'package:film_bilgi/FilmKategorileri/AksiyonFilmleri.dart';
import 'package:film_bilgi/FilmKategorileri/DramFilmleri.dart';
import 'package:film_bilgi/FilmKategorileri/GerilimFilmleri.dart';
import 'package:film_bilgi/FilmKategorileri/KomediFilmleri.dart';
import 'package:film_bilgi/MyWidget/My_Kategori_Button.dart';
import 'package:flutter/material.dart';

class FilmKategorileri extends StatefulWidget {
  const FilmKategorileri({Key? key}) : super(key: key);

  @override
  State<FilmKategorileri> createState() => _FilmKategorileriState();
}

class _FilmKategorileriState extends State<FilmKategorileri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Film Kategorileri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            My_Kategori_Button(
              image: 'assets/resimler/aksiyon.jpg',
              page: AksiyonFilmleri(),
              text: 'AKSIYON',
            ),
            My_Kategori_Button(
              image: 'assets/resimler/dram2.PNG',
              page: DramFilmleri(),
              text: 'DRAM',
            ),
            My_Kategori_Button(
              image: 'assets/resimler/gerilim.jpg',
              page: GerilimFilmleri(),
              text: 'GERILIM',
            ),
            My_Kategori_Button(
              image: 'assets/resimler/komedi.jpg',
              page: KomediFilmleri(),
              text: 'KOMEDI',
            ),
          ],
        ),
      ),

    );
  }
}
