import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:flutter/material.dart';
import 'file_untils.dart';


class FileOperationsScreen extends StatefulWidget {
  FileOperationsScreen() : super();

  final String title = "Dosyalama İşlemi";

  @override
  _FileOperationsScreenState createState() => _FileOperationsScreenState();
}

class _FileOperationsScreenState extends State<FileOperationsScreen> {
  String fileContents = "Kayıt Yok";
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: myController,
              ),
            ),
            ElevatedButton(
              child: Text("Dosyaya Kaydet"),
              onPressed: () {
                FileUtils.saveToFile(myController.text);
              },
            ),
            ElevatedButton(
              child: Text("Dosyadan Oku"),
              onPressed: () {
                FileUtils.readFromFile().then((contents) {
                  setState(() {
                    fileContents = contents;
                  });
                });
              },
            ),
            Text(fileContents),
            SizedBox(height: 70,),
            ElevatedButton(
              child: Text("Anasayfaya Dön"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => GirisSayfasi()));
              },
            ),
          ],
        ),
      ),
    );
  }
}