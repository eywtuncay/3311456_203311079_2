import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Diziler_Bilgi.dart';
import 'package:flutter/material.dart';

class Dizi14 extends StatefulWidget {
  const Dizi14({Key? key}) : super(key: key);

  @override
  State<Dizi14> createState() => _Dizi14State();
}

class _Dizi14State extends State<Dizi14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Brooklyn Nine-Nine"),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children:  <Widget>[
                Image.asset('assets/resimler/dizi14.png'),
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
                  puan: "8.4",
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
                  bilgi: "Yüzbaşı Ray Holt, istediği her şeyi yapmaya alışmış yetenekli ama kaygısız bir dedektif olan Dedektif Jake Peralta'nın da dahil olduğu Brooklyn'in 99. bölgesini devralır. Jake, ekibinin başına titiz yüzbaşının atanmasıyla artık kurallara uymaya, bir takım oyuncusu olmaya alışmak zorunda kalır.",
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
