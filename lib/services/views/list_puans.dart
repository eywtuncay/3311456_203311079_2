import "package:flutter/material.dart";
import '../models/puan.dart';
import '../service/db_utils.dart';

DbUtils utils = DbUtils();

class Listpuans extends StatefulWidget {
  @override
  _ListpuansState createState() => _ListpuansState();
}

class _ListpuansState extends State<Listpuans> {
  List<puan> puanList = [];

  void getData() async {
    await utils.puans().then((result) => {
      setState(() {
        puanList = result;
      })
    });
    print(puanList);
  }

  void showAlert(String alertTitle, String alertContent) {
    AlertDialog alertDialog;
    alertDialog =
        AlertDialog(title: Text(alertTitle), content: Text(alertContent));
    showDialog(context: context, builder: (_) => alertDialog);
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(puanList.length.toString() + " Yorum Yapıldı"),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: puanList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(puanList[index].name,style: TextStyle(fontSize: 25),),
                    onTap: () {

                      showAlert(
                          "Yorum No : " + index.toString() ,
                          "Yorum : " + puanList[index].name

                      );
                    },
                    onLongPress: () async {
                      await utils.deletepuan(puanList[index].id).then((value) => {
                        showAlert("Yorum " + index.toString() + " silindi",
                            "Yorum " + index.toString() + " silindi")
                      });
                      getData();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}