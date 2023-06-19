import 'package:flutter/material.dart';

class My_Filmler_Bilgi extends StatelessWidget {
  const My_Filmler_Bilgi({Key? key, this.filmbilgi}) : super(key: key);

  final filmbilgi;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0,3)
            )
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          filmbilgi,
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
