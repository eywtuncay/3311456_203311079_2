import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Diziler_Bilgi.dart';
import 'package:flutter/material.dart';

class Dizi9 extends StatefulWidget {
  const Dizi9({Key? key}) : super(key: key);

  @override
  State<Dizi9> createState() => _Dizi9State();
}

class _Dizi9State extends State<Dizi9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Prison Break"),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children:  <Widget>[
                Image.asset('assets/resimler/dizi9.png'),
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
                  puan: "8.3",
                  yil: "2005",
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
                  bilgi: "Haksız yere suçlandığını düşündüğü abisini hapishaneden kurtarmak isteyen Michael Scofield, nerdeyse kusursuz bir plan yapar. Lincoln Burrows'a yüklenen suç, kendilerini temize çıkarabilecekleri bir suç değildir. Devletin de işin içine karıştığını öğrendiklerinde kaçmaktan başka çareleri kalmaz. Michael planını uygulamaya sokar ve kaçış başlar.",
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
