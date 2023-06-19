import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Bilgi.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Foto.dart';
import 'package:flutter/material.dart';

class Film14 extends StatefulWidget {
  const Film14({Key? key}) : super(key: key);

  @override
  State<Film14> createState() => _Film14State();
}

class _Film14State extends State<Film14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Truman Show"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              My_Filmler_Foto(
                filmfoto: 'assets/resimler/detayFilm14.png',
              ),

              SizedBox(
                height: 35,
              ),
              My_Diziler(
                kategori: "Komedi",
                puan: "8.2",
                yil: "1998",
              ),

              SizedBox(
                height: 35,
              ),
              My_Filmler_Bilgi(
                filmbilgi: "Truman Show sinema tarihinin en yaratıcı senaryolarından birine sahip. Dünyanın en güzel adalarından birinde yaşayan halk imrenilecek derecede ütopik bir hayat sürmektedir. Bu adada yaşayan insanlar her güne mutlu uyanıp herhangi bir sorunla karşılaşmadan günü sonlandırıyorlardır. Başkarakterimiz Truman da bu şanslı insanlardan biridir. Güzel bir eşe ve mutlu bir hayata sahip olan Truman, bir gün öldüğünü zannettiği babasını bir gün caddede gördüğü ana kadar hayatı olduğu gibi yaşar. Babasını gördüğüne emindir ancak adam bir anda ortalıktan kaybolmuştur.",
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
