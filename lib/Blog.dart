import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Blog extends StatefulWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  var gelenYaziBasligi = "";
  var gelenYaziIcerigi = "";


  BlogYazisiEkle() {
    FirebaseFirestore.instance
        .collection("Yazılar")
        .doc(t1.text)
        .set({'baslik': t1.text, 'icerik': t2.text}).whenComplete(
            () => print('Yazı Eklendi'));
  }

  BlogYazisiGuncelle() {
    FirebaseFirestore.instance
        .collection("Yazılar")
        .doc(t1.text)
        .update({'baslik': t1.text, 'icerik': t2.text}).whenComplete(
            () => print('Yazı Güncellendi'));
  }

  BlogYazisiSilme() {
    FirebaseFirestore.instance.collection("Yazılar").doc(t1.text).delete();
  }

  BlogYazisiListele() {
    FirebaseFirestore.instance
        .collection("Yazılar")
        .doc(t1.text)
        .get()
        .then((genelVeri){
          setState(() {
            gelenYaziBasligi=genelVeri.data()!['baslik'];
            gelenYaziIcerigi=genelVeri.data()!['icerik'];
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Blog'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextField(
                controller: t1,
                decoration: InputDecoration(
                  hintText: 'Blog Başlığı Giriniz :',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),

              TextField(
                controller: t2,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Blog Yazısı Giriniz :',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),

              const SizedBox(height: 12.0),
              Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          side: const BorderSide(color: Colors.black, width: 2),
                          primary: Colors.white,
                          minimumSize: Size(180,45)),
                      onPressed: (){
                        BlogYazisiEkle();
                      },
                      child: Text(
                        "Ekle",
                        style: TextStyle(fontSize: 18,color: Colors.black),),

                    ),
                    SizedBox(width: 10,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          side: const BorderSide(color: Colors.black, width: 2),
                          primary: Colors.white,
                          minimumSize: Size(180,45)),
                      onPressed: (){
                        BlogYazisiGuncelle();
                      },
                      child: Text(
                        "Güncelle",
                        style: TextStyle(fontSize: 18,color: Colors.black),),

                    ),
                  ]
              ),
              SizedBox(
                height: 10,),
              Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          side: const BorderSide(color: Colors.black, width: 2),
                          primary: Colors.white,
                          minimumSize: Size(180,45)),
                      onPressed: (){
                        BlogYazisiSilme();
                      },
                      child: Text(
                        "Sil",
                        style: TextStyle(fontSize: 18,color: Colors.black),),

                    ),
                    SizedBox(width: 10,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          side: const BorderSide(color: Colors.black, width: 2),
                          primary: Colors.white,
                          minimumSize: Size(180,45)),
                      onPressed: (){
                        BlogYazisiListele();
                      },
                      child: Text(
                        "Görüntüle",
                        style: TextStyle(fontSize: 18,color: Colors.black),),

                    ),
                  ]
              ),

              ListTile(
                title: Text(gelenYaziBasligi),
                subtitle: Text(gelenYaziIcerigi),
              ),
            ],
          ),
        ),
      ),
    );
  }
}