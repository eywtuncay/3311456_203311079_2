import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Bilgi.dart';
import 'package:film_bilgi/MyWidget/My_Filmler_Foto.dart';
import 'package:flutter/material.dart';

class Film10 extends StatefulWidget {
  const Film10({Key? key}) : super(key: key);

  @override
  State<Film10> createState() => _Film10State();
}

class _Film10State extends State<Film10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Kanlı Elmas"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              My_Filmler_Foto(
                filmfoto: 'assets/resimler/detayFilm10.png',
              ),

              SizedBox(
                height: 35,
              ),
              My_Diziler(
                kategori: "Gerilim",
                puan: "8.0",
                yil: "2006",
              ),

              SizedBox(
                height: 35,
              ),
              My_Filmler_Bilgi(
                filmbilgi: "Hayat bazen, değerli bir tek şey uğrunda bambaşka insanların kaderlerini umulmadık bir biçimde kesiştirebiliyor. Bambaşka hayatlardan gelen, vaktiyle orduda görev yapmış Danny Archer ile uzun zaman önce ait olduğu yerden kopartılarak elmas madenlerinde işe koyulmuş Solomon Vandy. Herkesin gözdesi, büyüleyici bir elmasın varlığı nedeni ile yolları kesişir. Her ikisi de elmasın peşi sıra gazeteci Maddy Bowen ile beraber yola çıktıklarında hayatlarına dair değerli birer fırsatı da yakalamışlardır. Solomon ait olduğu yere, ailesine kavuşabilme ihtimali ile Danny ise yeni bir hayata başlamanın umudu ile aydınlanırlar.",
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
