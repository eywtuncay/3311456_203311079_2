import 'package:film_bilgi/Listeler/Listeler.dart';
import 'package:flutter/material.dart';

import '../GirisSayfasi.dart';

class Liste2 extends StatefulWidget {
  const Liste2({Key? key}) : super(key: key);

  @override
  State<Liste2> createState() => _Liste2State();
}

class _Liste2State extends State<Liste2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("LİSTELER"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '''
Kendinizi Sevmeyi Öğreten 10 Film

1)Duyguların Rengi
2)Mulan
3)Hababam Rock
4)Bay Evet
5)Tatlı Yalanlar
6)Rye Lane
7)Walter Mitty'nin Gizli Yaşamı
8)Akıl Oyunları
9)Hayatımın Tatili
10)Tatil
                ''',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight:FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20,),
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
