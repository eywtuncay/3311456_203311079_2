import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Bilgi.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Foto.dart';
import 'package:flutter/material.dart';

class Film3 extends StatefulWidget {
  const Film3({Key? key}) : super(key: key);

  @override
  State<Film3> createState() => _Film3State();
}

class _Film3State extends State<Film3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("V for Vendetta"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              My_Filmler_Foto(
                filmfoto: 'assets/resimler/detayFilm3.png',
              ),
              SizedBox(
                height: 35,
              ),

              My_Diziler(
                kategori: "Aksiyon",
                puan: "8.2",
                yil: "2005",
              ),
              SizedBox(
                height: 35,
              ),

              My_Filmler_Bilgi(
                filmbilgi: "V,  2020 yılında ve İngiltere’de geçiyor. Ülke, son derece baskıcı bir toplum düzenini yaşamaktadır. Türlü yasaklar ve engellerle idare edilen halk, şiddet yanlısı bir konuma gelmiştir. Bu kargaşanın orta yerinde görünen gizemli V, belaya bulaşmış masum bir kadın olan Evey’i kurtarır. Ancak bu kurtarış, tam da ulusun kurtuluşunu temsil eder çünkü onun davranışı aslında toplumun uyanışını tetikleyen ve başkaldırıyı başlatan unsurdur. Tam da bu sebeple artık insanlık adına bir ayaklanma zamanıdır. Alan Moore’un romanından uyarlanan film, son derece epik bir hikayedir.",
              ),
              ElevatedButton(
                child: Text("Anasayfaya Dön"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => GirisSayfasi()));
                },
              ),
            ],
          ),
        ),
      ),

    );
  }
}
