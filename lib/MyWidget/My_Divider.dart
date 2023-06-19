import 'package:flutter/material.dart';

class My_Divider extends StatelessWidget {
  const My_Divider({Key? key, this.height, this.indent, this.endIndent}) : super(key: key);

  final height;
  final indent;
  final endIndent;

  @override
  Widget build(BuildContext context) {
    return Divider(
        color: Colors.black26,
        height: height,
        thickness:2,
        indent: indent,
        endIndent: endIndent,
        );
  }
}
