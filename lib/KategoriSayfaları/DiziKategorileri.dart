import 'package:film_bilgi/DiziKategorileri/AksiyonDizileri.dart';
import 'package:film_bilgi/DiziKategorileri/DramDizileri.dart';
import 'package:film_bilgi/DiziKategorileri/GerilimDizileri.dart';
import 'package:film_bilgi/DiziKategorileri/KomediDizileri.dart';
import 'package:film_bilgi/MyWidget/My_Kategori_Button.dart';
import 'package:flutter/material.dart';

class DiziKategorileri extends StatefulWidget {
  const DiziKategorileri({Key? key}) : super(key: key);

  @override
  State<DiziKategorileri> createState() => _DiziKategorileriState();
}

class _DiziKategorileriState extends State<DiziKategorileri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dizi Kategorileri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            My_Kategori_Button(
              image: 'assets/resimler/aksiyon.jpg',
              page: AksiyonDizileri(),
              text: 'AKSIYON',
            ),
            My_Kategori_Button(
              image: 'assets/resimler/dram2.PNG',
              page: DramDizileri(),
              text: 'DRAM',
            ),
            My_Kategori_Button(
              image: 'assets/resimler/gerilim.jpg',
              page: GerilimDizileri(),
              text: 'GERILIM',
            ),
            My_Kategori_Button(
              image: 'assets/resimler/komedi.jpg',
              page: KomediDizileri(),
              text: 'KOMEDI',
            ),

          ],
        ),
      ),

    );
  }
}
