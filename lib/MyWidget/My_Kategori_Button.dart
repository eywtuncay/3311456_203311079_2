import 'package:flutter/material.dart';

class My_Kategori_Button extends StatefulWidget {
  const My_Kategori_Button({Key? key, this.image, this.page,this.text}) : super(key: key);
  final image;
  final page;
  final text;


  @override
  State<My_Kategori_Button> createState() => _My_Kategori_ButtonState();
}

class _My_Kategori_ButtonState extends State<My_Kategori_Button> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.all(2.0),
      textColor: Colors.white,
      splashColor: Colors.greenAccent,
      elevation: 9.0,
      child: Container(
        width: 400,
        height: 145,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(widget.image!),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.center,
            child: Text(
                widget.text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500,fontFamily: 'Doctor')
            ),
          ),

        ),
      ),
      // ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder:(context) => widget.page));
      },
    );
  }
}
