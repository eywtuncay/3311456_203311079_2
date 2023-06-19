import 'package:flutter/material.dart';

class My_Hakkinda_Widget extends StatelessWidget {
  const My_Hakkinda_Widget({Key? key, this.resim, this.baslik, this.aciklama}) : super(key: key);

  final resim;
  final baslik;
  final aciklama;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20,),
        Container(
          width: 120,
          height: 120,
          child: CircleAvatar (
            backgroundImage: AssetImage (resim) ,
          ),
        ),
        SizedBox(width: 20,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 230,
              child: Text(
                baslik,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight:FontWeight.w400,
                ),),
            ),
            Container(
              width: 230,
              child: Text(
                aciklama,
                  style: TextStyle(
                    fontSize: 15,
                  ),
              ),
            ),

          ],
        ),
      ],
    );
  }
}
