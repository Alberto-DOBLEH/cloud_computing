import 'package:flutter/material.dart';
import 'package:practica_15/src/slivers_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext conext){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practica 15',
      home: SliversPage(),
    );
  }
}
