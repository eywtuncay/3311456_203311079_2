import 'package:flutter/material.dart';

class My_Filmler_Foto extends StatelessWidget {
  const My_Filmler_Foto({Key? key, this.filmfoto}) : super(key: key);

  final filmfoto;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 220,
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
        child: Image.asset(filmfoto),
      ),

    );
  }
}
