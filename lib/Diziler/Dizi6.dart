import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Diziler_Bilgi.dart';
import 'package:flutter/material.dart';

class Dizi6 extends StatefulWidget {
  const Dizi6({Key? key}) : super(key: key);

  @override
  State<Dizi6> createState() => _Dizi6State();
}

class _Dizi6State extends State<Dizi6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Spartacus"),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children:  <Widget>[
                Image.asset('assets/resimler/dizi6.png'),
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
                  puan: "8.2",
                  yil: "2010",
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
                  bilgi: "Romalıların ihanetine uğradı, köleliğe zorlandı ve bir gladyatör olarak yeniden doğdu. Çizgi roman estetiğinin ve ileri görsel efekt teknolojilerinin tüm nimetlerinden yararlanılarak çekilen Spartacus: Blood and Sand, yurdundan ve sevdiği kadından koparılan bir adamın, kanlı arenalarda küllerinden doğuş öyküsünü anlatıyor. O artık ateşli tutkuların esiri olmuş ve gaddarca yönetilen bir dünyada mücadele vermek zorunda. Spartaküs hayatta kalmak için sıradan bir adamdan ve bir gladyatörden çok daha fazlası olmalı. O, bir efsaneye dönüşmeli. Tarihin en asi kahramanı, televizyonu fethetmeye hazırlanıyor. Spartacus: Blood and Sand ile Romalıları dize getiren efsanenin doğuşuna tanıklık edeceksiniz.",
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
