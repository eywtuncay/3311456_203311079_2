import 'package:flutter/material.dart';

class My_Diziler_Bilgi extends StatelessWidget {
  const My_Diziler_Bilgi({Key? key, this.bilgi }) : super(key: key);

  final bilgi;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white70.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],

      ),
      width: 350,
      child: Text(
        bilgi,
        style: TextStyle(
          color: Colors.black45,
          fontSize: 18,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
