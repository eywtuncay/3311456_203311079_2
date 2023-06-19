import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Diziler_Bilgi.dart';
import 'package:flutter/material.dart';

class Dizi15 extends StatefulWidget {
  const Dizi15({Key? key}) : super(key: key);

  @override
  State<Dizi15> createState() => _Dizi15State();
}

class _Dizi15State extends State<Dizi15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Friends"),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children:  <Widget>[
                Image.asset('assets/resimler/dizi15.png'),
                Divider(
                  color: Colors.black26,
                  height: 45,
                  thickness:2,
                  indent: 20,
                  endIndent: 35,
                ),
                SizedBox(
                  height: 10,
                ),

                My_Diziler(
                  kategori: "Komedi",
                  puan: "8.9",
                  yil: "1994",
                ),
                Divider(
                  color: Colors.black26,
                  height: 45,
                  thickness:2,
                  indent: 20,
                  endIndent: 35,
                ),
                SizedBox(
                  height: 10,
                ),

                My_Diziler_Bilgi(
                  bilgi: "Tüm zamanların en sevilen sitcom'larından biri Seinfeld ise diğeri hiç kuşkusuz Friends olmuştur. Çocukluk arkadaşı olan Monica ve Rachel, Monica'nın ağabeyi Ross, Ross'un üniversiteden oda arkadaşı Chandler... Chandler'ın ev arkadaşı Joey ve Monica'nın eski arkadaşı Phoebe. Geçmişleri bir şekilde bir yerde kesişen bu 6 arkadaşın yedikleri içtikleri ayrı gitmiyor.Müthiş bir mizah ile dostluk bağlarının içiçe geçtiği dizideki karakterler, 10 sezona yayılan hikaye boyunca izleyiciyle birlikte büyüyüp olgunlaşıyor.Jennifer Aniston gibi sonradan yıldızlaşacak isimleri kazandıran bir dizi olarak da unutulmazlar arasındadır.",
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: Text("Anasayfaya Dön"),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => GirisSayfasi()));
                  },
                ),


              ],
            ),
          )

      ),

    );
  }
}
