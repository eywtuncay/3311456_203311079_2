import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Diziler_Bilgi.dart';
import 'package:flutter/material.dart';

class Dizi5 extends StatefulWidget {
  const Dizi5({Key? key}) : super(key: key);

  @override
  State<Dizi5> createState() => _Dizi5State();
}

class _Dizi5State extends State<Dizi5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Breaking Bad"),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children:  <Widget>[
                Image.asset('assets/resimler/bb.jpg'),
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
                  puan: "9.5",
                  yil: "2008",
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
                  bilgi: "Lisede kimya öğretmenliği yapan Walter White bir gün doktordan ileri safhada akciğer kanseri olduğunu öğrenir. Kendisinden sonra geride kalan ailesine maddi birikim sağlamak isteyen Walter White, uyuşturucu yapımında ustalaşan eski bir öğrencisi, Jesse Pinkman ile beraber uyuşturucu işine girer. Elbetteki yasa dışı yollardan ve uyuşturucunun da eş anlamlısının bela olduğunu bilerek... Bir yanda kimya alanında önemli işlere imza atmış bir öğretmen, diğer yanda bu tehlikeli piyasayı çok iyi tanıyan, gözü pek bir 'eski öğrenci'... Yüksek kalitede ve saflıkta ürettikleri metamfetamin, onları uyuşturucu ticaretinin en riskli yollarına da bulaştıracak... Başrollerini deneyimli aktör Bryan Cranston veAaron Paul'un paylaştığı Breaking Bad, orijinal öyküsü ve sürükleyici senaryosunun yanı sıra oyuncularına kazandırdığı Altın Küre adaylıkları, Emmy ve Saturn ödülleriyle de televizyon dizileri arasında kalitesini ve farkını belli eden bir yapım...1990'lı yılların kült bilim-kurgu dizisi The X Files'ın ortak yapımcıları ve yazarları arasında yer alan Vince Gilligan'ın yapımcılığını üstlendiği dizi eleştirmenler tarafından da son yılların en başarılı yapımlarından biri olarak gösteriliyor...",
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
