import 'package:flutter/material.dart';


import '../models/albums_model.dart';
import '../services/albums_services.dart';

class AlbumsView extends StatefulWidget {
  @override
  _AlbumsViewState createState() => _AlbumsViewState();
}

class _AlbumsViewState extends State<AlbumsView> {
  late Future<List<comments>> futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uygulama Verileri'),
      ),
      body: Center(
        child: FutureBuilder<List<comments>>(
          future: futureData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<comments> data = snapshot.data!;
              return ListView.separated(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {

                  return Container(
                    width: 450,
                    height: 170,
                    color: Colors.lightBlueAccent,
                    constraints: const BoxConstraints(maxHeight: 300),
                    child:

                    Row(
                      children: [
                        Flexible(
                          child: Text('''
Uygulamayı Ziyaret Eden Kullanıcı Bilgisi;
                          
Kullanıcı ID: ${data[index].id} 

Kullanıcı Mail:
${data[index].email}

Kullanıcı Bilgisi:
${data[index].name} 
 '''),
                        )
                      ],
                    ),
                  );

                },
                separatorBuilder: (BuildContext context, int index) => const Divider(),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}