import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Bilgi.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Foto.dart';
import 'package:flutter/material.dart';

class Film6 extends StatefulWidget {
  const Film6({Key? key}) : super(key: key);

  @override
  State<Film6> createState() => _Film6State();
}

class _Film6State extends State<Film6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Forrest Gump"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              My_Filmler_Foto(
                filmfoto: 'assets/resimler/detayFilm6.png',
              ),

              SizedBox(
                height: 35,
              ),
              My_Diziler(
                kategori: "Dram",
                puan: "8.8",
                yil: "1994",
              ),

              SizedBox(
                height: 35,
              ),

              My_Filmler_Bilgi(
                filmbilgi: "Forrest Gump, düşük I.Q. sahibi genç bir adamdır. Jenny ile tanıştığında ona aşık olur. Gump aralarında Elvis Presley, Kennedy, Nixon’ın da olduğu tarihsel kişilerle kaza eseri tanışır ve 50’lerden 70’lerin sonuna kadar gelen bir süre zarfında olaylar gelişir. Gump tamamen tesadüf olarak Vietnam savaşına ve Amerikan yakın tarihinin önemli olaylarına şahitlik eder ve hatta rol alır. Ancak bilmeden yaptıklarının ne kadar önemli sonuçları olduğundan da haberi yoktur.",
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
