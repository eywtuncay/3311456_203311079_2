import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Diziler_Bilgi.dart';
import 'package:flutter/material.dart';

class Dizi2 extends StatefulWidget {
  const Dizi2({Key? key}) : super(key: key);

  @override
  State<Dizi2> createState() => _Dizi2State();
}

class _Dizi2State extends State<Dizi2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("The Walking Dead"),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children:  <Widget>[
                Image.asset('assets/resimler/twd.png'),
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
                  kategori: "Aksiyon",
                  puan: "8.1",
                  yil: "2010",
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
                  bilgi: "Yaşayan ölüler diyarına hoş geldiniz Kasabanın polis şefi Rick Grimes bir gün vurularak hastaneye kaldırılır; fakat o komadayken geçen sürede bildiği yaşam altüst olmuştur. Artık dünya, insan etiyle beslenen zombilerin insafına kalacak! Tabii birazcık insani duyguları kaldıysa... Atlanta da kaostan sonra sessizce hayatta kalmaya çalışan küçük bir grup insanınsa, birbirlerinden başka tutunacak kimseleri yok... Robert Kirkman'ın aynı isimli çizgi romanından uyarlama olan bu zombi hikayesinin yönetmeni ise Esaretin Bedeli (The Shawshank Redemption) ve Yeşil Yol (The Green Mile) filmleri ile hafızalara kazınan Frank Darabont...",
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
