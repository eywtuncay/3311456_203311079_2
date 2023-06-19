import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Diziler_Bilgi.dart';
import 'package:flutter/material.dart';

class Dizi7 extends StatefulWidget {
  const Dizi7({Key? key}) : super(key: key);

  @override
  State<Dizi7> createState() => _Dizi7State();
}

class _Dizi7State extends State<Dizi7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Vikings"),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children:  <Widget>[
                Image.asset('assets/resimler/dizi7.png'),
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
                  puan: "8.5",
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
                  bilgi: "8. yüzyıl İskandinavyası’nda geçen dizi, basit bir çiftçiyken cesur bir savaşçıya dönüşen Ragnar Lothbrok ve ailesinin öyküsünü ekranlara taşıyor. Savaş Tanrısı Odin'in soyundan geldiğine inanılan Ragnor’un acımasız ve korkusuz adamlarıyla birlikte denizlerle olan imtihanını seyrederken; savaşçı ve tüccar bir kavim olan Vikingler’in çok az işlenmiş ilgi çekici kültürüne hep birlikte tanık oluyoruz. Tarihi bir drama olarak nitelendirilebilecek dizinin hikayesi, gerçek Avrupa efsanelerine ve tarihsel figürlere dayanıyor.",
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
