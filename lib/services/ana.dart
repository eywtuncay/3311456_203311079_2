import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/services/service/db_utils.dart';
import 'package:film_bilgi/services/views/list_puans.dart';
import "package:flutter/material.dart";
import 'package:sqflite/sqflite.dart';
import 'models/puan.dart';

DbUtils utils = DbUtils();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yorum Yap',
      home: Listpuans(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController puanIdController = TextEditingController();
  TextEditingController puanAdController = TextEditingController();

  late Future<Database> database;

  List<puan> puanList = [];

  _onPressedUpdate() async {
    final yorum = puan(
      id: int.parse(puanIdController.text),
      name: puanAdController.text,
    );
    utils.updatepuan(yorum);
    puanList = await utils.puans();

    getData();
  }

  _onPressedAdd() async {
    final yorum = puan(
      id: int.parse(puanIdController.text),
      name: puanAdController.text,
    );
    utils.insertpuan(yorum);
    puanList = await utils.puans();
    //print(puanList);
    getData();
  }

  _deletepuanTable() {
    utils.deleteTable();
    puanList = [];
    getData();
  }

  void getData() async {
    await utils.puans().then((result) => {
      setState(() {
        puanList = result;
      })
    });
    print(puanList);
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  void didChangeAppLifecycleState(AppLifecycleState state) {
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Yorum Yap"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: puanIdController,
                  decoration: const InputDecoration(
                    hintText: 'Dizi/Film ID Giriniz :',
                    filled: true, fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: puanAdController,
                  decoration: const InputDecoration(
                    hintText: 'Yorum Giriniz :',
                    filled: true, fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              Column(
                  children: [
                    Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: StadiumBorder(),
                                    side: const BorderSide(color: Colors.black, width: 2),
                                    primary: Colors.white,
                                    minimumSize: Size(180,45)),
                                onPressed: _onPressedAdd, child: Text("Ekle",style: TextStyle(fontSize: 18, color: Colors.black),)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: StadiumBorder(),
                                    side: const BorderSide(color: Colors.black, width: 2),
                                    primary: Colors.white,
                                    minimumSize: Size(180,45)),
                                onPressed: _onPressedUpdate, child: Text("Güncelle",style: TextStyle(fontSize: 18,color: Colors.black),)),
                          ),
                        ]
                    ),
                    Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: StadiumBorder(),
                                    side: const BorderSide(color: Colors.black, width: 2),
                                    primary: Colors.white,
                                    minimumSize: Size(180,45)),
                                onPressed: _deletepuanTable,
                                child: const Text("Sil",style: TextStyle(fontSize: 18,color: Colors.black),)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: StadiumBorder(),
                                    side: const BorderSide(color: Colors.black, width: 2),
                                    primary: Colors.white,
                                    minimumSize: Size(180,45)),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Listpuans()),
                                  );
                                },
                                child: const Text("Listele",style: TextStyle(fontSize: 18,color: Colors.black),)),
                          ),
                        ]
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          side: const BorderSide(color: Colors.black, width: 2),
                          primary: Colors.white,
                          minimumSize: Size(390,45)),
                      child: Text("Anasayfaya Dön",style: TextStyle(fontSize: 18,color: Colors.black),),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context) => GirisSayfasi()));
                      },
                    ),
                  ]
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: puanList.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(puanList[index].name,
                              style: const TextStyle(fontSize: 20),),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}