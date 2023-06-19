import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Bilgi.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Foto.dart';
import 'package:flutter/material.dart';

class Film1 extends StatefulWidget {
  const Film1({Key? key}) : super(key: key);

  @override
  State<Film1> createState() => _Film1State();
}

class _Film1State extends State<Film1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Matrix"),
      ),
      body: Center(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5,
            ),

            My_Filmler_Foto(
              filmfoto: 'assets/resimler/detayFilm1.png',
            ),
            SizedBox(
              height: 35,
            ),

            My_Diziler(
              kategori: "Aksiyon",
              puan: "8.7",
              yil: "1999",
            ),
            SizedBox(
              height: 35,
            ),

            My_Filmler_Bilgi(
              filmbilgi: "Bir yaşanan gerçek vardır, bir de yaşananın ötesinde olan gerçeklik... Biri rüya, diğeri ise Matrix! Neo,son derece tehlikeli bir adam olan Morpheus’un gerçeği bildiğine inanmaktadır. Bir gece Neo, kendisini başka bir dünyaya götürebilecek güzel yabancı Trinity ile tanışır. Bu kızın götüreceği dünyada, Neo Morpheus’u bulacak ve Matrix hakkında bir şeyler öğrenecektir. Neo, Tam olarak kavrayamadığı şeylerin yaşamını kontrol ettiğini biliyor.. Nedir bu Matrix?",
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
