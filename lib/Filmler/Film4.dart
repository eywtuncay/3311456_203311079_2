import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Bilgi.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Foto.dart';
import 'package:flutter/material.dart';

class Film4 extends StatefulWidget {
  const Film4({Key? key}) : super(key: key);

  @override
  State<Film4> createState() => _Film4State();
}

class _Film4State extends State<Film4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Batman Başlıyor"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              My_Filmler_Foto(
                filmfoto: 'assets/resimler/detayFilm4.png',
              ),

              SizedBox(
                height: 35,
              ),
              My_Diziler(
                kategori: "Aksiyon",
                puan: "8.2",
                yil: "2005",
              ),

              SizedBox(
                height: 35,
              ),

              My_Filmler_Bilgi(
                filmbilgi: "Batman Başlıyor'da, ailesi öldürülen playboy Bruce Wayne, Henri Ducard ve Ra’s Al Ghul’ın yol göstericiliğinde Asya’ya taşınır. Gotham adeta şeytanlarla, kötü hesapların peşinde olan adamlarla kuşatılmış bir yerdir. Suç olayları bitmek bilmez. Bruce Wayne’in amacı bu şehre adaleti getirerek insanların ruhundaki korkuları ortadan kaldırmakve onları huzurlu kılmaktır.Yol göstericisi Ra’s al Ghul her ne kadar ona çok şey öğreten insan olsa da bir başka açıdan yoluna engel de teşkil etmektedir. Christopher Nolan’dan gelen bir Batman üçlemesinin ilk filmidir.",
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
