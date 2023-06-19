import 'dart:io';
import 'package:film_bilgi/AboutPage.dart';
import 'package:film_bilgi/DosyalamaIslemleri/Dosyalar.dart';
import 'package:film_bilgi/services/ana.dart';
import 'package:film_bilgi/services/api/views/albums_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class My_Drawer extends StatelessWidget {
  const My_Drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Colors.blue,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 5,
                    margin: const EdgeInsets.only(top: 30, bottom: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),

                  CircleAvatar(
                    radius:60,
                    backgroundImage: AssetImage('assets/resimler/pp.png'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Tuncay Albayrak',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  const Text(
                    '0545 374 7969',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Row(
                    children: const [
                      Text(
                        'Kadıköy/İstanbul',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          GestureDetector(
            child: ListTile(
              leading: const Icon(Icons.notes,color: Colors.blue),
              title: const Text(
                'Yorumlarım',
                style: TextStyle(fontSize: 18),
              ),
            ),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Yorum Yap Sayfasına Yönlendirildin...')));
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          GestureDetector(
            child: ListTile(
              leading: const Icon(Icons.perm_data_setting_outlined,color: Colors.blue),
              title: const Text(
                'Uygulama Verileri',
                style: TextStyle(fontSize: 18),
              ),
            ),
            onTapDown: (e) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Uygulama Verileri Sayfasına Yönlendirildin...')));
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AlbumsView()));
            },
          ),
          GestureDetector(
            child: ListTile(
              leading: const Icon(Icons.file_copy_outlined,color: Colors.blue),
              title: const Text(
                'Dosya Kaydı',
                style: TextStyle(fontSize: 18),
              ),
            ),
            onTapUp: (e) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Dosyalama İşlemi Sayfasına Yönlendirildin...')));
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Dosyalar()));
            },
          ),
          GestureDetector(
            child: ListTile(
              leading: const Icon(Icons.info,color: Colors.blue),
              title: const Text(
                'Hakkında',
                style: TextStyle(fontSize: 18),
              ),
              subtitle: const Text(
                '(çift tıklayınız)',
                style: TextStyle(fontSize: 15),
              ),
            ),
            onDoubleTap: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Hakkında Sayfasına Yönlendirildin...')));
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutPage()));
            },
          ),
          GestureDetector(
            child: ListTile(
              leading: const Icon(Icons.arrow_back,color: Colors.blue),
              title: const Text(
                'Çıkış',
                style: TextStyle(fontSize: 18),
              ),
              subtitle: const Text(
                '(uzun basınız)',
                style: TextStyle(fontSize: 15),
              ),
            ),
            onLongPress: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Uygulamadan Çıkılıyor...')));
              if(Platform.isAndroid){
                SystemNavigator.pop();
              }else {
                exit(0);
              }
            },
          ),
        ],
      ),
    );
  }
}