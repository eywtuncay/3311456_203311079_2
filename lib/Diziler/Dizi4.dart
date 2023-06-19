import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Diziler.dart';
import 'package:film_bilgi/MyWidget/My_Diziler_Bilgi.dart';
import 'package:flutter/material.dart';

class Dizi4 extends StatefulWidget {
  const Dizi4({Key? key}) : super(key: key);

  @override
  State<Dizi4> createState() => _Dizi4State();
}

class _Dizi4State extends State<Dizi4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Game of Thrones"),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children:  <Widget>[
                Image.asset('assets/resimler/dizi4.png'),
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
                  kategori: "Aksiyon",
                  puan: "9.2",
                  yil: "2011",
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
                  bilgi: "Krallık dediğin savaşsız olur mu? En güçlü krallığı kurup, huzuru sağlamış olsan bile bu gücü elinde nasıl koruyacaksın? Burada yanlış yapana yer yok, affetmek yok. Kuzey Krallığının hükümdarı Lord Ned Stark, uzun ve zorlu savaşlardan sonra anayurduna dönüp krallığını bütünlük içerisinde tutmayı başarmıştır. Kral Robert Baratheon ile yıllarca omuz omuza çarpışan ve Baratheon'un kral olmasını sağlayan Ned Stark'ın tek istediği kuzey sınırlarını koruyan krallığında ailesiyle ve halkıyla yaşamaktır."
                      " Fakat suyun öte yanında kendi topraklarından ve krallığından kovulduğunu iddia eden Viserys Targaryen , kız kardeşi Daenerys'i barbar kavimlerin başı Han Drogo ya vererek, güç birliği planları yapmaktadır. Tahtını büyük bir iştahla geri isteyen ama kraliyet oyunlarından habersiz olan Viserys in planları Kral Baratheon a ulaşır. Savaş alanında büyük cengaver olan ama ülke ve aile yönetiminde aynı başarıyı tutturamayan Baratheon un tamamen güvenebileceği ve her yanlış hamlesini arkasından toplayacak yeni bir sağ kola ihtiyacı vardır. Kuzeyin Lordu Ned Stark bu görev için seçilen tek aday isimdir. Kış yaklaşıyor..."
                      " Hanedan entrikaları, kapılı kapılar ardında dönen oyunlar, birilerinin kuyusunu kazmak için düşmanın koynuna girmekten çekinmeyen kadınlar, kardeşler arası çekişmeler, dışlanmalar... Hepsi tek bir hedef için: taht kavgası...",
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
