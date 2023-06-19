import 'package:film_bilgi/Listeler/Listeler.dart';
import 'package:flutter/material.dart';

import '../GirisSayfasi.dart';

class Liste1 extends StatefulWidget {
  const Liste1({Key? key}) : super(key: key);

  @override
  State<Liste1> createState() => _Liste1State();
}

class _Liste1State extends State<Liste1> {
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
En Çok İzlenen Disney Plus Dizileri

1)The Walking Dead
2)The Mandalorian
3)Andor
4)She-Hulk: Attorney at Law
5)She-Hulk: Attorney at Law
6)Grey's Anatomy
7)Moon Knight
8)Modern Family
9)Obi-Wan Kenobi
10)Aile Reisi
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
