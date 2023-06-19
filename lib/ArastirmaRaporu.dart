import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'DosyalamaIslemleri/istatistikler.dart';
import 'GirisSayfasi.dart';

void main() {
  runApp(const ArastirmaRaporu());
}

class ArastirmaRaporu extends StatelessWidget {
  const ArastirmaRaporu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ButtonStates(),
    );
  }
}
bool isAnimating = true;

enum ButtonState { init, submitting, completed }

class ButtonStates extends StatefulWidget {
  const ButtonStates({Key? key}) : super(key: key);

  @override
  _ButtonStatesState createState() => _ButtonStatesState();
}

class _ButtonStatesState extends State<ButtonStates> {

  ButtonState state = ButtonState.init;

  Future<String> get _localDevicePath async {
    final _devicePath = await getApplicationDocumentsDirectory();
    return _devicePath.path;
  }

  Future<File> _localFile({required String path, required String type}) async {
    String _path = await _localDevicePath;

    var _newPath = await Directory("$_path/$path").create();
    return File("${_newPath.path}/rapor.$type");
  }

  Future _downloadSamplePDF() async {
    final _response = await http.get(Uri.parse(
        "https://dergipark.org.tr/en/download/article-file/905587"));
    if (_response.statusCode == 200) {
      final _file = await _localFile(path: "pdfs", type: "pdf");
      final _saveFile = await _file.writeAsBytes(_response.bodyBytes);
      print("Dosya yazma işlemi tamamlandı. Dosyanın yolu: ${_saveFile.path}");
      setState(() {
        _filePath = _saveFile.path;
      });
    } else {
      print(_response.statusCode);
    }
  }

  String _filePath = "";

  @override
  Widget build(BuildContext context) {
    final buttonWidth = MediaQuery.of(context).size.width;

    // update the UI depending on below variable values
    final isInit = isAnimating || state == ButtonState.init;
    final isDone = state == ButtonState.completed;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Araştırma Raporu"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
              "Gençlerin Türkiye’de Üretilen Televizyon Dizilerine Yönelik Tutumları ve Dizi Tüketim Faktörlerinin Analizi Üzerine Yapılan Araştırma Raporu.\n"
                  "- Doç. Dr. Mihalis KUYUCU",
              style: TextStyle(
                color: Colors.black45,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,),
            AnimatedContainer(

                duration: Duration(milliseconds: 300),
                onEnd: () => setState(() {
                  isAnimating = !isAnimating;
                }),
                width: state == ButtonState.init ? buttonWidth : 70,
                height: 55,
                child: isInit ? buildButton(

                ) : circularContainer(isDone)),

            TextButton.icon(
              icon: Icon(Icons.tv),
              label: Text("Araştırma Raporunu Görüntüle"),
              onPressed: () async {
                final _openFile = await OpenFilex.open(_filePath);
                print(_openFile);
              },
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(_filePath),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              ElevatedButton(
                child: Text("Anasayfaya Dön"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => GirisSayfasi()));
                },
              ),
              SizedBox(
                width: 15,),
              ElevatedButton(
                child: Text("istatistikleri gör"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => istatistikler()));
                },
              ),
                ]
            ),



          ],
        ),
      ),
    );

  }



  Widget buildButton() => ElevatedButton(
    style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
    onPressed: () async {

      _downloadSamplePDF();

      setState(() {
        state = ButtonState.submitting;
      });

      await Future.delayed(Duration(seconds: 3));
      setState(() {
        state = ButtonState.completed;
      });
      await Future.delayed(Duration(seconds: 17));
      setState(() {
        state = ButtonState.init;
      });
    },
    child: const Text('Araştırma Raporunu İndir'),
  );


  Widget circularContainer(bool done) {
    final color = done ? Colors.green : Colors.blue;
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: Center(
        child: done
            ? const Icon(Icons.done, size: 50, color: Colors.white)
            : const CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}

