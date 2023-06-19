import 'package:flutter/material.dart';

class My_Listeler extends StatefulWidget {
  const My_Listeler({Key? key, this.image, this.page,this.text}) : super(key: key);
  final image;
  final page;
  final text;


  @override
  State<My_Listeler> createState() => _My_ListelerState();
}

class _My_ListelerState extends State<My_Listeler> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Padding(
          padding: const EdgeInsets.only(left: 15.0,top: 10.0,right: 15.0),
          child: Image.asset(widget.image!),
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) => widget.page));
          },
          child:  Text(
              widget.text
          ),
        ),
        SizedBox(height: 20,),

      ],
    );
  }
}
