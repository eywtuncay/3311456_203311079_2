import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Bilgi.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Foto.dart';
import 'package:flutter/material.dart';

class Film15 extends StatefulWidget {
  const Film15({Key? key}) : super(key: key);

  @override
  State<Film15> createState() => _Film15State();
}

class _Film15State extends State<Film15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Arabalar"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              My_Filmler_Foto(
                filmfoto: 'assets/resimler/detayFilm15.png',
              ),

              SizedBox(
                height: 35,
              ),
              My_Diziler(
                kategori: "Komedi",
                puan: "7.2",
                yil: "2006",
              ),

              SizedBox(
                height: 35,
              ),
              My_Filmler_Bilgi(
                filmbilgi: "Piston Kupası için The King ve Chick Hicks’e karşı yarışmak üzere Kaliforniya’ya gitmekte olan meşhur yarış arabası Lightning McQueen, kaza ile Radiator Springs adındaki küçük bir kasabanın yollarına zarar verir. Üstelik kendisinin de tamir olması için çok çalışması gerekmektedir. Bu sırada bu olayla beraber o kasabada geçirdiği zamanlarda dostluklar edinir ve gerçek sevgiyi yaşar. Hatta aşkı bile katar yaşamına. Bu küçük kasabada kaldığı sürece değerleri değişmeye başlar. İşte ancak ondan sonra gerçek bir kazanan olmaya hazır hale gelecektir. Arabalar üzerinden hayatın anlamına dokunan keyifli bir animasyon.",
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
