import 'package:flutter/material.dart';

class MyMaterialButton extends StatefulWidget {
  const MyMaterialButton({Key? key, this.image, this.page,this.text, this.width, this.height}) : super(key: key);
  final image;
  final page;
  final text;
  final width;
  final height;

  @override
  State<MyMaterialButton> createState() => _MyMaterialButtonState();
}

class _MyMaterialButtonState extends State<MyMaterialButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
                padding: EdgeInsets.all(2.0),
                textColor: Colors.white,
                splashColor: Colors.greenAccent,
                elevation: 8.0,
                child: Container(
                  width: widget.width!,
                  height: widget.height!,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
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
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500,)
                      ),
                    ),
                  ),
                ),
                // ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context) => widget.page!));
                }
    );
  }
}
