import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Diziler_Bilgi.dart';
import 'package:flutter/material.dart';

class Dizi16 extends StatefulWidget {
  const Dizi16({Key? key}) : super(key: key);

  @override
  State<Dizi16> createState() => _Dizi16State();
}

class _Dizi16State extends State<Dizi16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("The Office"),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children:  <Widget>[
                Image.asset('assets/resimler/dizi16.png'),
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
                  puan: "9.0",
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
                  bilgi: "Burası Dunder Mufflin Kağıt Şirketi. Sıradan gibi görünen ama sıra dışı komik bir ofis. İktidar düşkünü bir patron, her biri ayrı karakterde çalışanlar, 9-17 arası bitmesi gereken işler ve modern dünyanın en vazgeçilmez unsuru ofis hayatı! Ama Michael Scott (Steve Carell) sıradan bir patron değil; Şakaları çalışanları tarafından anlaşılmayan çalışanlarının gözünde kaba, sevimsiz, sinir bozucu, ırkçı, cinsiyetçi ve verdiği hiçbir sözü yerine getiremeyen patron ama aslında o bir komedyen, bir dost, bir yardımsever... BBC televizyonun aynı adlı dizisinden uyarlanarak Amerikan versiyonu da çekilen The Office, sit-com komedilerine yeni bir soluk getirdi...",
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
