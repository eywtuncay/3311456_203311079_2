import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Bilgi.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Foto.dart';
import 'package:flutter/material.dart';

class Film8 extends StatefulWidget {
  const Film8({Key? key}) : super(key: key);

  @override
  State<Film8> createState() => _Film8State();
}

class _Film8State extends State<Film8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("The Piyanist"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              My_Filmler_Foto(
                filmfoto: 'assets/resimler/detayFilm8.png',
              ),

              SizedBox(
                height: 35,
              ),
              My_Diziler(
                kategori: "Dram",
                puan: "8.5",
                yil: "2002",
              ),

              SizedBox(
                height: 35,
              ),
              My_Filmler_Bilgi(
                filmbilgi: "Piyanist, İkinci Dünya Savaşı sırasında yaşanan gerçek bir dramı konu alır. Polonya’lı ünlü piyanist Wladyslaw Szpilman’ın anılarını anlattığı aynı isimli kitaptan sinemaya uyarlanan film, Nazi işgali altındaki Polonya’da yaşamanın imkansızlaştırıldığı bir dönemde, bir şekilde esir kampına gitmekten kurtulan ünlü piyanistin Varşova’nın kenar mahallelerindeki hayatta kalma mücadelesine odaklanır. Varoşlarda tam anlamıyla sefil bir hayat süren müzisyen, diğer halkla birlikte, kıtlığa ve aşağılanmalara maruz kalsa da kahramanca mücadele edecektir.",
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
