import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Diziler_Bilgi.dart';
import 'package:flutter/material.dart';

class Dizi3 extends StatefulWidget {
  const Dizi3({Key? key}) : super(key: key);

  @override
  State<Dizi3> createState() => _Dizi3State();
}

class _Dizi3State extends State<Dizi3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("The Witcher"),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children:  <Widget>[
                Image.asset('assets/resimler/dizi3.png'),
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
                  yil: "2019",
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
                  bilgi: "The Witcher'ın fantastik hikayesinde, yüzyılı aşkın süredir bir arada yaşayan insanlar, cüceler ve elfler arasındaki barış sona erer ve yeni bir ırklar arası savaş patlak verir. The Witcher olarak nam salan acımasız suikastçı Geralt of Rivia, vaadedilen çocuğun doğumunu beklemektedir. Bu çocuk dünyanın tüm dengesini değiştirecek güce sahiptir.",
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
