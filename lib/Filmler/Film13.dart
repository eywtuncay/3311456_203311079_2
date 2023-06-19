import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Bilgi.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Foto.dart';
import 'package:flutter/material.dart';

class Film13 extends StatefulWidget {
  const Film13({Key? key}) : super(key: key);

  @override
  State<Film13> createState() => _Film13State();
}

class _Film13State extends State<Film13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Buz Devri"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              My_Filmler_Foto(
                filmfoto: 'assets/resimler/detayFilm13.png',
              ),

              SizedBox(
                height: 35,
              ),
              My_Diziler(
                kategori: "Komedi",
                puan: "7.5",
                yil: "2002",
              ),

              SizedBox(
                height: 35,
              ),
              My_Filmler_Bilgi(
                filmbilgi: "Buzul çağı, dünyaya hüküm sürmeye başlamıştır. Bu ıssız ve korkunç dünyada bir başlarına olan zavallı hayvanlar, bir şekilde hayatta kalmanın yollarını aramaktadırlar. Uzun tüylü, kendi halinde bir mamut; karizmatik ve dişli bir kaplan ve muzır bir rakun, nasıl olduysa bu kaos esnasında bir araya gelmişlerdir. Bu üç birbirinden farklı türe mensup hayvanın odağında ise tek bir mevzu vardır. Buldukları küçük bebeği, insanlara ulaştırıp o bebeğin hayatını kurtarmak...",
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
