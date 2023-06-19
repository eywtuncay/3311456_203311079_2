import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Diziler_Bilgi.dart';
import 'package:flutter/material.dart';

class Dizi13 extends StatefulWidget {
  const Dizi13({Key? key}) : super(key: key);

  @override
  State<Dizi13> createState() => _Dizi13State();
}

class _Dizi13State extends State<Dizi13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("How I Met Your Mother"),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children:  <Widget>[
                Image.asset('assets/resimler/dizi13.png'),
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
                  bilgi: "2030 yılındayız; Ted Mosby çocuklarına anneleri ile tanışmasının ‘uzuuun’ hikayesini anlatıyor ve bir anda 2005 yılının Amerikası’na geri dönerek, beş sıkı dostun 20’li yaşlardaki eğlenceli yaşamalarına konuk oluyoruz. Ted, 27 yaşında Manhattan'lı bir mimardır. Hukuk fakültesinde okuyan Marshall ise en iyi dostudur ve dokuz yıldır beraber olduğu sevgilisi Lily vardır. Ekibin son üyesi Barney Stenson ise nev-i şahsına münhasır, takım elbise tutkunu bir kadın avcısıdır. Bir gün Marshall Ted’e, Lily’ye evlenme teklif edeceğini söyleyince bekâr kalmak istemeyen Ted’in etekleri tutuşur. Ama evliliğin de herhangi biriyle olmayacağına ve hayatının gerçek aşkını bulacağına inanmaktadır. Tam da bu sırada Robin Scherbatsky ile tanışınca How I Met Your Mother’ın sıkı beşlisi tamamlanır. Kendileri de okul sıralarından arkadaş olan Carter Bays ve Craig Thomas'ın imzasını taşıyan dizi, zamanda gezinişiyle, karakterlerin günlük hayattan yansımaları ve kadın-erkek ilişkilerine bakış açısıyla, yakın dönemin en çok sevilen komedi sitcom yapımlarının başında geliyor.",
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
