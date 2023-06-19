import 'package:film_bilgi/Diziler/Dizi5.dart';
import 'package:film_bilgi/Diziler/Dizi6.dart';
import 'package:film_bilgi/Diziler/Dizi7.dart';
import 'package:film_bilgi/Diziler/Dizi8.dart';
import 'package:flutter/material.dart';

import '../MyWidget/My_DiziFilm_Button.dart';

class DramDizileri extends StatefulWidget {
  const DramDizileri({Key? key}) : super(key: key);

  @override
  State<DramDizileri> createState() => _DramDizileriState();
}

class _DramDizileriState extends State<DramDizileri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dram Dizileri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
                children: <Widget>[
                  My_DiziFilm_Button(
                    image: 'assets/resimler/bb.jpg',
                    page: Dizi5(),
                  ),
                  My_DiziFilm_Button(
                    image: 'assets/resimler/dizi6.png',
                    page: Dizi6(),
                  ),
                ]
            ),
            Row(
                children: <Widget>[
                  My_DiziFilm_Button(
                    image: 'assets/resimler/dizi7.png',
                    page: Dizi7(),
                  ),
                  My_DiziFilm_Button(
                    image: 'assets/resimler/dizi8.png',
                    page: Dizi8(),
                  ),
                ]
            ),
          ],
        ),
      ),

    );
  }
}
