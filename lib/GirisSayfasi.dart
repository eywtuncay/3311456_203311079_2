import 'package:film_bilgi/Blog.dart';
import 'package:film_bilgi/Listeler/Listeler.dart';
import 'package:film_bilgi/KategoriSayfalar%C4%B1/DiziKategorileri.dart';
import 'package:film_bilgi/KategoriSayfalar%C4%B1/FilmKategorileri.dart';
import 'package:film_bilgi/MyWidget/MyMaterialButton.dart';
import 'package:film_bilgi/MyWidget/My_Divider.dart';
import 'package:film_bilgi/MyWidget/My_Drawer.dart';
import 'package:film_bilgi/TopDizi.dart';
import 'package:film_bilgi/DosyalamaIslemleri/istatistikler.dart';
import 'package:flutter/material.dart';

class GirisSayfasi extends StatefulWidget {
  const GirisSayfasi({Key? key}) : super(key: key);

  @override
  State<GirisSayfasi> createState() => _GirisSayfasiState();
}

class _GirisSayfasiState extends State<GirisSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const My_Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Anasayfa"),

      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Bugün Ne İzlemek İstersin?",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      MyMaterialButton(
                        width: 170.0,
                        height: 70.0,
                        image: 'assets/resimler/pb.jpg',
                        page: DiziKategorileri(),
                        text: 'DİZİ',
                      ),
                      MyMaterialButton(
                        width: 170.0,
                        height: 70.0,
                        image: 'assets/resimler/coco.jpg',
                        page: FilmKategorileri(),
                        text: 'FİLM',
                      ),
                  ],
                  ),
                  MyMaterialButton(
                    width: 230.0,
                    height: 144.0,
                    image: 'assets/resimler/öneri.jpg',
                    page: istatistikler(),
                    text: 'İSTATİSTİKLER',
                  ),
                ],
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
                height: 45,
              ),

              Text(
                "Daha Fazlasını Gör",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight:FontWeight.w400,
                ),),
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
              MyMaterialButton(
                width: 405.0,
                height: 70.0,
                image: 'assets/resimler/imdbsiralamasi.jpg',
                page: TopDizi(),
                text: '',
              ),

              MyMaterialButton(
                width: 405.0,
                height: 70.0,
                image: 'assets/resimler/gündem2.jpg',
                page: Listeler(),
                text: 'LİSTELER',
              ),
              MyMaterialButton(
                width: 405.0,
                height: 70.0,
                image: 'assets/resimler/actors.jpg',
                page: Blog(),
                text: 'BLOG',
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

            ],
          ),
        ),
      ),
    );
  }
}
