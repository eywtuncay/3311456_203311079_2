import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Bilgi.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Foto.dart';
import 'package:flutter/material.dart';

class Film2 extends StatefulWidget {
  const Film2({Key? key}) : super(key: key);

  @override
  State<Film2> createState() => _Film2State();
}

class _Film2State extends State<Film2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Kara Şövalye"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              My_Filmler_Foto(
                filmfoto: 'assets/resimler/detayFilm2.png',
              ),

              SizedBox(
                height: 35,
              ),
              My_Diziler(
                kategori: "Aksiyon",
                puan: "9.0",
                yil: "2008",
              ),

              SizedBox(
                height: 35,
              ),

              My_Filmler_Bilgi(
                filmbilgi: "Kara Şövalye, halk için büyük bir tehdit oluşturan Joker’in ortaya çıkması ile kaosa dönen Gotham Sokakları’nın yeniden kurtarıcılığını üstlenen Batman’in hikayesini konu ediyor. Suç işleyenlerden arındırılan bir yer, bir zaman sonra yeniden tehdit altında kalabilir ve işte o zaman yeniden kolları sıvayacak olanların mücadelesi de daha keskin olarak hayata geçecektir. Batman, Teğmen Gordon ve Savcı Harvey Dent bir araya gelerek Gotham Sokakları’nda bu işi kotarmış olsalar da ansızın ortaya çıkan Joker, işleri fena halde bozar.",
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
