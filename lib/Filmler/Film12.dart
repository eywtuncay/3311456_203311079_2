import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Bilgi.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Foto.dart';
import 'package:flutter/material.dart';

class Film12 extends StatefulWidget {
  const Film12({Key? key}) : super(key: key);

  @override
  State<Film12> createState() => _Film12State();
}

class _Film12State extends State<Film12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Kapıdaki Düşman"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              My_Filmler_Foto(
                filmfoto: 'assets/resimler/detayFilm12.png',
              ),

              SizedBox(
                height: 35,
              ),
              My_Diziler(
                kategori: "Gerilim",
                puan: "7.5",
                yil: "2001",
              ),

              SizedBox(
                height: 35,
              ),
              My_Filmler_Bilgi(
                filmbilgi: "Stalingrad, İkinci Dünya Savaşı'nın yıkıcı dehşetiyle kuşatılmıştır. Savaşın acılarıyla yoğrulup ölmekte olan bir mezarlık haline gelen şehrin sokaklarında ölüm dolaşmaktadır. İki karşı safta olan iki keskin nişancı, savaşın ortasında kendi kişisel ego savaşlarına başlamanın eşiğindedirler. Rus keskin nişancı, savaştaki müthiş atılımları sayesinde artık kahraman olarak anılmaktadır. Stalingrad, kan içerisinde boğulurken karşı karşıya gelen iki amansız savaşçı, savaşa kendi açılarından bakmaya başlayacaklardır.",
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
