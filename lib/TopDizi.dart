import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Divider.dart';
import 'package:film_bilgi/MyWidget/My_Imdb_Widget.dart';
import 'package:flutter/material.dart';

class TopDizi extends StatefulWidget {
  const TopDizi({Key? key}) : super(key: key);

  @override
  State<TopDizi> createState() => _TopDiziState();
}

class _TopDiziState extends State<TopDizi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("IMDB TOP 10 Dizi"),
      ),
      body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              height: 50,
            ),

            My_Imdb_Widget(
              siralama: "1",
              resim: 'assets/resimler/bb_kucuk.jpg',
              isim: "Breaking Bad",
              imdb: "9.5",
            ),
            SizedBox(
              height: 20,
            ),
            My_Divider(
              height: 5.0,
              indent: 10.0,
              endIndent: 10.0,
            ),
            SizedBox(
              height: 20,
            ),

            My_Imdb_Widget(
              siralama: "2",
              resim: 'assets/resimler/andOfBrothers.jpg',
              isim: "Brand of Brothers",
              imdb: "9.4",
            ),
            SizedBox(
              height: 20,
            ),
            My_Divider(
              height: 5.0,
              indent: 10.0,
              endIndent: 10.0,
            ),
            SizedBox(
              height: 20,
            ),

            My_Imdb_Widget(
              siralama: "3",
              resim: 'assets/resimler/Chernobyl.jpg',
              isim: "Chernobyl",
              imdb: "9.3",
            ),
            SizedBox(
              height: 20,
            ),
            My_Divider(
              height: 5.0,
              indent: 10.0,
              endIndent: 10.0,
            ),
            SizedBox(
              height: 20,
            ),

            My_Imdb_Widget(
              siralama: "4",
              resim: 'assets/resimler/TheWire.jpg',
              isim: "The Wire",
              imdb: "9.3",
            ),
            SizedBox(
              height: 20,
            ),
            My_Divider(
              height: 5.0,
              indent: 10.0,
              endIndent: 10.0,
            ),
            SizedBox(
              height: 20,
            ),

            My_Imdb_Widget(
              siralama: "5",
              resim: 'assets/resimler/TheSopranos.jpg',
              isim: "The Sopranos",
              imdb: "9.2",
            ),
            SizedBox(
              height: 20,
            ),
            My_Divider(
              height: 5.0,
              indent: 10.0,
              endIndent: 10.0,
            ),
            SizedBox(
              height: 20,
            ),

            My_Imdb_Widget(
              siralama: "6",
              resim: 'assets/resimler/got.jpg',
              isim: "Game of Thrones",
              imdb: "9.2",
            ),
            SizedBox(
              height: 20,
            ),
            My_Divider(
              height: 5.0,
              indent: 10.0,
              endIndent: 10.0,
            ),
            SizedBox(
              height: 20,
            ),

            My_Imdb_Widget(
              siralama: "7",
              resim: 'assets/resimler/sherlock.jpg',
              isim: "Sherlock",
              imdb: "9.1",
            ),
            SizedBox(
              height: 20,
            ),
            My_Divider(
              height: 5.0,
              indent: 10.0,
              endIndent: 10.0,
            ),
            SizedBox(
              height: 20,
            ),

            My_Imdb_Widget(
              siralama: "8",
              resim: 'assets/resimler/TheTwilightZone.jpg',
              isim: "The Twilght Zone",
              imdb: "9.1",
            ),
            SizedBox(
              height: 20,
            ),
            My_Divider(
              height: 5.0,
              indent: 10.0,
              endIndent: 10.0,
            ),
            SizedBox(
              height: 20,
            ),

            My_Imdb_Widget(
              siralama: "9",
              resim: 'assets/resimler/Firefly.jpg',
              isim: "Firefly",
              imdb: "9.0",
            ),
            SizedBox(
              height: 20,
            ),
            My_Divider(
              height: 5.0,
              indent: 10.0,
              endIndent: 10.0,
            ),
            SizedBox(
              height: 20,
            ),

            My_Imdb_Widget(
              siralama: "10",
              resim: 'assets/resimler/TheOffice.jpg',
              isim: "The Office",
              imdb: "9.0",
            ),
            SizedBox(
              height: 20,
            ),
            My_Divider(
              height: 5.0,
              indent: 10.0,
              endIndent: 10.0,
            ),
            SizedBox(
              height: 20,
            ),


            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
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
