import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Bilgi.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Foto.dart';
import 'package:flutter/material.dart';

class Film16 extends StatefulWidget {
  const Film16({Key? key}) : super(key: key);

  @override
  State<Film16> createState() => _Film16State();
}

class _Film16State extends State<Film16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Shrek"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              My_Filmler_Foto(
                filmfoto: 'assets/resimler/detayFilm16.png',
              ),

              SizedBox(
                height: 35,
              ),
              My_Diziler(
            kategori: "Komedi",
            puan: "7.9",
            yil: "2001",
          ),

              SizedBox(
                height: 35,
              ),
              My_Filmler_Bilgi(
                filmbilgi: "Shrek, oldukça korkutucu bir görünüme sahip, devasa, yeşil bir troldür. Yalnızlığın getirisiyle, hayatının geri kalanını beraber geçirebileceği, en az kendisi kadar çirkin bir yaratık bulmanın hevesindedir. Bir kahin, kehanetini açıklar. Şrek ile güzeller güzeli bir prenses olan Fiona arasında duygusal bir ilişki cereyan edecektir. Ancak Şrek ne kadar çirkinse Fiona bir o kadar güzeldir. Oldukça garip durumlar ve vaziyetler peyda olmak üzeredir.",
              ),

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
