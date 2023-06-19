import 'package:flutter/material.dart';

import '../GirisSayfasi.dart';

class Liste5 extends StatefulWidget {
  const Liste5({Key? key}) : super(key: key);

  @override
  State<Liste5> createState() => _Liste5State();
}

class _Liste5State extends State<Liste5> {
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
Netflixdeki En İyi Zombi Dizileri

1)The Walking Dead
2)Kingdom
3)Daybreak
4)Black Summer
5)Z Nation
6)To The Lake
7)The Rain
8)Resident Evil: Biohazard
9)Ash vs Evil Dead
10)La Révolution
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
