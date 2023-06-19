import 'package:flutter/material.dart';

class My_Imdb_Widget extends StatelessWidget {
  const My_Imdb_Widget({Key? key, this.siralama, this.resim, this.isim, this.imdb}) : super(key: key);

  final siralama;
  final resim;
  final isim;
  final imdb;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 15,
        ),
        Text(
          siralama,
          style: TextStyle(
            fontSize: 30,
            fontWeight:FontWeight.w400,
          ),),
        SizedBox(
          width: 10,
        ),
        CircleAvatar (
          backgroundImage: AssetImage (resim,) ,
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          isim,
          style: TextStyle(
            fontSize: 25,
            fontWeight:FontWeight.w400,
          ),),
        SizedBox(
          width: 15,
        ),
        Icon(Icons.star_border_purple500_rounded),
        SizedBox(
          width: 5,
        ),
        Text(
          imdb,
          style: TextStyle(
            fontSize: 25,
            fontWeight:FontWeight.w400,
          ),),
      ],
    );
  }
}
