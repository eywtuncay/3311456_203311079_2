import 'package:flutter/material.dart';

class My_Diziler extends StatelessWidget {
  const My_Diziler({Key? key, this.kategori, this.puan, this.yil}) : super(key: key);

  final kategori;
  final puan;
  final yil;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 30,
        ),
        Icon(Icons.format_list_bulleted_sharp),
        SizedBox(
          width: 5,
        ),
        Container(
          child: Text(

            kategori,
            style: TextStyle(
              fontSize: 16,
              fontWeight:FontWeight.w600,
            ),),
        ), //tür
        SizedBox(
          width: 70,
        ),
        Icon(Icons.timeline),
        SizedBox(
          width: 5,
        ),
        Container(
          child: Text(
            puan,
            style: TextStyle(
              fontSize: 16,
              fontWeight:FontWeight.w600,
            ),
          ),
        ), //puan
        SizedBox(
          width: 65,
        ),
        Icon(Icons.history),
        SizedBox(
          width: 5,
        ),
        Container(
          child: Text(
            yil,
            style: TextStyle(
              fontSize: 16,
              fontWeight:FontWeight.w600,
            ),),
        ), //yıl
      ],
    );
  }
}
