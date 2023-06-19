import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Diziler_Bilgi.dart';
import 'package:flutter/material.dart';

class Dizi12 extends StatefulWidget {
  const Dizi12({Key? key}) : super(key: key);

  @override
  State<Dizi12> createState() => _Dizi12State();
}

class _Dizi12State extends State<Dizi12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("11.22.63"),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children:  <Widget>[
                Image.asset('assets/resimler/dizi12.png'),
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
                  puan: "8.1",
                  yil: "2016",
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
                  bilgi: "Bir zaman yolculuğu hikayesi anlatan 11/22/63, lisede İngilizce öğretmeni olan Jake Epping karakterini merkeze alıyor. Bir lokantanın deposunun geçmişe açıldığını fark eden ve zamanda geriye giden Epping, John F. Kennedy suikastını önlemeye çalışır. Ancak işler çok geçmeden sarpa sarar; zira kahramanımız, Lee Harvey Oswald engeline takılır ve hayatının aşkı ile karşılaşır!",
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
