import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Bilgi.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Foto.dart';
import 'package:flutter/material.dart';

class Film7 extends StatefulWidget {
  const Film7({Key? key}) : super(key: key);

  @override
  State<Film7> createState() => _Film6State();
}

class _Film6State extends State<Film7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sevginin Gücü"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              My_Filmler_Foto(
                filmfoto: 'assets/resimler/detayFilm7.png',
              ),

              SizedBox(
                height: 35,
              ),
              My_Diziler(
                kategori: "Dram",
                puan: "8.5",
                yil: "1994",
              ),

              SizedBox(
                height: 35,
              ),
              My_Filmler_Bilgi(
                filmbilgi: "Sevginin Gücü, masum bir kız ve bir katilin hikayesini anlatıyor. Onların birbirlerinden başka kaybedecek hiçbir şeyleri yok. Erkek duygusuzca öldürüyor. Zayıf noktasını sadece 12 yaşındaki bir kız biliyor.12 yaşında New York’ta yaşayan Mathilda, üvey ailesinin yanında sevimsiz bir yaşamı paylaşmaktadır. Babası, iki taraflı oynayan bozulmuş polis için uyuşturucu saklamaktadır. Mathilda’yı kaçıp gitmekten tek alıkoyan küçük erkek kardeşidir. Bir gün, tüm ailesinin katledeildiği zaman alışverişte olan Mathilda şans eseri hayatta kalır ve en çok ihtiyacı olduğu sırada Léon’un dairesine saklanarak kendini kurtarır.",
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
