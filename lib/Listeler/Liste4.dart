import 'package:film_bilgi/Listeler/Listeler.dart';
import 'package:flutter/material.dart';

import '../GirisSayfasi.dart';

class Liste4 extends StatefulWidget {
  const Liste4({Key? key}) : super(key: key);

  @override
  State<Liste4> createState() => _Liste4State();
}

class _Liste4State extends State<Liste4> {
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
Blu TV de İzlemeniz Gereken Yerli Diziler

1)Yeşilçam
2)Ben Bu Boşluğu Nasıl
3)Bozkır
4)Çekiç ve Gül: Bir Behzat Ç. Hikayesi
5)Saygı
6)Bartu Ben
7)7 Yüz
8)Bonkis
9)Pavyon
10)Acans
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
