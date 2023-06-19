import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Diziler_Bilgi.dart';
import 'package:flutter/material.dart';

class Dizi8 extends StatefulWidget {
  const Dizi8({Key? key}) : super(key: key);

  @override
  State<Dizi8> createState() => _Dizi8State();
}

class _Dizi8State extends State<Dizi8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Peaky Blinders"),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children:  <Widget>[
                Image.asset('assets/resimler/dizi8.png'),
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
                  kategori: "Dram",
                  puan: "8.2",
                  yil: "2013",
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
                  bilgi: "Birinci Dünya Savaşı’ndan yeni çıkmış İngiltere’yi, yasadışı faaliyet gösteren çeşitli çeteler sarmıştır. Bunlardan biri de soygunculuk ve at yarışıyla para kazanan Peaky Blinders’dır. Polislere rüşvet yedirerek paçayı kurtaran çete, bir soygunda yanlışlık yapınca, başlarına bela olacak yeni bir müfettişin şehre gelmesine vesile olurlar.",
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
