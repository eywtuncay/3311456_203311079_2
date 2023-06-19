import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Divider.dart';
import 'package:film_bilgi/MyWidget/My_Hakkinda_Widget.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hakkında"),
      ),
      body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(height: 40,),

            Text(
              "Uygulama Hakkında",
              style: TextStyle(
                fontSize: 25,
                fontWeight:FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            My_Divider(
              height: 10.0,
              indent: 20.0,
              endIndent: 35.0,
            ),
            SizedBox(
              height: 30,
            ),

            My_Hakkinda_Widget(
              resim: 'assets/resimler/pb.jpg',
              baslik: "DİZİ",
              aciklama: "Dizi menüsü üzerinden kategori seçip istediğin diziler hakkında bilgi alabilirsin.",
            ),
            SizedBox(height: 40,),

            My_Hakkinda_Widget(
              resim: 'assets/resimler/coco.jpg',
              baslik: "FİLM",
              aciklama: "Film menüsü üzerinden kategori seçip istediğin filmler hakkında bilgi alabilirsin.",
            ),
            SizedBox(height: 40,),

            My_Hakkinda_Widget(
              resim: 'assets/resimler/öneri.jpg',
              baslik: "İSTATİSTİKLER",
              aciklama: "İstatistikler menüsü üzerinden Dizi sektörü hakkında yapılmış olan isatistiki verilere ulaşabilirsiniz.",
            ),
            SizedBox(height: 40,),

            My_Hakkinda_Widget(
              resim: 'assets/resimler/imdbsiralamasi.jpg',
              baslik: "IMDB TOP 10",
              aciklama: "IMDb de tüm zamanların en iyi 10 yapımının puanları ve sıralamaları hakkında bilgi alabilirsin.",
            ),
            SizedBox(height: 40,),

            My_Hakkinda_Widget(
              resim: 'assets/resimler/actors.jpg',
              baslik: "BLOG",
              aciklama: "Blog sayfası üzerinden istediğiniz bir konu hakkında blog yazısı yazıp görüntüleyebiirsiniz.",
            ),
            SizedBox(height: 40,),

            My_Hakkinda_Widget(
              resim: 'assets/resimler/gündem2.jpg',
              baslik: "GÜNDEM",
              aciklama: "İlerleyen dönemlerde eklenecek olan Aktörler sayfası sana aktörler hakkında bilgi verecek.",
            ),
            SizedBox(height: 40,),


            Text(
              "Geliştirici Hakkında",
              style: TextStyle(
                fontSize: 25,
                fontWeight:FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            My_Divider(
              height: 10.0,
              indent: 20.0,
              endIndent: 35.0,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 330,
              child: Text(
                "Merhaba Ben Tuncay Albayrak, bu uygulama Selçuk Üniversitesi Bilgisayar Mühendisliği 4. dönem dersi olan Mobil Programlama dersi için ders kapsamında istenilen kıstaslara göre geliştirilmiştir.",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            ElevatedButton(
              child: Text("Anasayfa"),
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
