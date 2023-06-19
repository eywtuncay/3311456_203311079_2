import 'package:flutter/material.dart';

class My_DiziFilm_Button extends StatefulWidget {
  const My_DiziFilm_Button({Key? key, this.image, this.page}) : super(key: key);
  final image;
  final page;



  @override
  State<My_DiziFilm_Button> createState() => _My_DiziFilm_ButtonState();
}

class _My_DiziFilm_ButtonState extends State<My_DiziFilm_Button> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.all(2.0),
      textColor: Colors.white,
      splashColor: Colors.greenAccent,
      elevation: 9.0,
      child: Container(
        width: 201,
        height: 297,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(widget.image!),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
        ),
      ),
      // ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder:(context) => widget.page!));
      },
    );
  }
}
