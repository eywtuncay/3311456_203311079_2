import 'package:film_bilgi/DosyalamaIslemleri/Dosya%C4%B0slemleri.dart';
import 'package:flutter/material.dart';

class Dosyalar extends StatefulWidget {
  const Dosyalar({Key? key}) : super(key: key);

  @override
  State<Dosyalar> createState() => _DosyalarState();
}

class _DosyalarState extends State<Dosyalar> {
  @override
  Widget build(BuildContext context) {
    return FileOperationsScreen();
  }
}
