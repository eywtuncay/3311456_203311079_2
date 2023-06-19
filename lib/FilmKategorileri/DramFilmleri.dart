import 'package:film_bilgi/Filmler/Film5.dart';
import 'package:film_bilgi/Filmler/Film6.dart';
import 'package:film_bilgi/Filmler/Film7.dart';
import 'package:film_bilgi/Filmler/Film8.dart';
import 'package:flutter/material.dart';

import '../MyWidget/My_DiziFilm_Button.dart';

class DramFilmleri extends StatefulWidget {
  const DramFilmleri({Key? key}) : super(key: key);

  @override
  State<DramFilmleri> createState() => _DramFilmleriState();
}

class _DramFilmleriState extends State<DramFilmleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dram Filmleri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
                children: <Widget>[
                  My_DiziFilm_Button(
                    image: 'assets/resimler/film5.png',
                    page: Film5(),
                  ),
                  My_DiziFilm_Button(
                    image: 'assets/resimler/film6.png',
                    page: Film6(),
                  ),
                ]
            ),
            Row(
                children: <Widget>[
                  My_DiziFilm_Button(
                    image: 'assets/resimler/film7.png',
                    page: Film7(),
                  ),
                  My_DiziFilm_Button(
                    image: 'assets/resimler/film8.png',
                    page: Film8(),
                  ),
                ]
            ),
          ],
        ),
      ),

    );
  }
}
