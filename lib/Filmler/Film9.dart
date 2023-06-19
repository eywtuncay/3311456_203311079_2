import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Bilgi.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Foto.dart';
import 'package:flutter/material.dart';

class Film9 extends StatefulWidget {
  const Film9({Key? key}) : super(key: key);

  @override
  State<Film9> createState() => _Film9State();
}

class _Film9State extends State<Film9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dövüş Kulübü"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              My_Filmler_Foto(
                filmfoto: 'assets/resimler/detayFilm9.png',
              ),

              SizedBox(
                height: 35,
              ),
              My_Diziler(
                kategori: "Gerilim",
                puan: "8.8",
                yil: "1999",
              ),

              SizedBox(
                height: 35,
              ),
              My_Filmler_Bilgi(
                filmbilgi: "Dövüş Kulübünün birinci kuralı: Asla Dövüş Kulübü hakkında konuşma... Dövüş Kulübünün ikinci kuralı: Asla ve asla dövüş kulübü hakkında konuşma... Jack, hayatın sıradanlığına kapılmış bir sigorta memurudur. Uzun bir süredir 'insomnia' yani uykusuzluk hastalığından şikayetçidir. Kendi psikolojik sıkıntılarından kurtulabilmek adına grup terapilerine katılmaktadır. Terapiler esnasında Marla adında bir kızla tanışır. Bir süre sonra da hayatını değiştirecek olan Tyler Durden ile... Durden, Jack'in ulaşmak istediği tüm hedeflere ulaşmış olan bir adamdır.",
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
