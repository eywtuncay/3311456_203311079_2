import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Diziler_Bilgi.dart';
import 'package:flutter/material.dart';

class Dizi1 extends StatefulWidget {
  const Dizi1({Key? key}) : super(key: key);

  @override
  State<Dizi1> createState() => _Dizi1State();
}

class _Dizi1State extends State<Dizi1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("La Casa de Papel"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children:  <Widget>[
              Image.asset('assets/resimler/dizi1.png'),

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
                puan: "8.2",
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
                bilgi: "Profesör olarak adlandırılan bir suç dehası, tarihin en büyük soygununu yapmayı planlar. Amacı İspanya Kraliyet Darphanesine girmektir. Bunun için de işlerinde uzman olan 8 suçludan oluşan bir ekip kurar. Ekip, 5 aylık bir eğitim sürecinden geçer ve bu sürede her ihtimali hesaba katarak soygunu kusursuz bir hale getirirler. Artık her şey hazırdır. 8 kişi, rehineleri de yanlarına alarak kendilerini İspanya Kraliyet Darphanesine kilitler. Fakat hiç hesaba katmadıkları olaylar gerçekleşir.",
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
