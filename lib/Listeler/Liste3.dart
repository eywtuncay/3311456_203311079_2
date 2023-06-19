import 'package:film_bilgi/Listeler/Listeler.dart';
import 'package:flutter/material.dart';

import '../GirisSayfasi.dart';

class Liste3 extends StatefulWidget {
  const Liste3({Key? key}) : super(key: key);

  @override
  State<Liste3> createState() => _Liste3State();
}

class _Liste3State extends State<Liste3> {
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
              Text(
                '''
Düğün Temalı En Komik Filmler

1)Gelinlerin Savaşı
2)Kalbinin Sesini Dinle
3)Davetsiz Çapkınlar
4)Nedimeler
5)Kaçak Gelin
6)Evlilik Öpücüğü
7)Gelinin Babası
8)Sağdıç
9)Benimle Evlenir Misin?
10)Çık Aramızdan
                ''',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight:FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20,),
              ElevatedButton(
                child: Text("Anasayfaya Dön"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => GirisSayfasi()));
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
