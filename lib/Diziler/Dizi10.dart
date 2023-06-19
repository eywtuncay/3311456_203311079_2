import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Diziler_Bilgi.dart';
import 'package:flutter/material.dart';

class Dizi10 extends StatefulWidget {
  const Dizi10({Key? key}) : super(key: key);

  @override
  State<Dizi10> createState() => _Dizi10State();
}

class _Dizi10State extends State<Dizi10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dark"),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children:  <Widget>[
                Image.asset('assets/resimler/dizi10.png'),
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
                  kategori: "Gerilim",
                  puan: "8.7",
                  yil: "2017",
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
                  bilgi: "Kayıp bir çocuk. Bir yanıt bulmak için ümitsizce çabalayıp duran dört aile. Ve bu aramalar sonucunda ortaya çıkan sırlar ile gerçekler. Küçük kasabanın kaderi değişir ve gerçek yüzü ortaya çıkar.",
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
