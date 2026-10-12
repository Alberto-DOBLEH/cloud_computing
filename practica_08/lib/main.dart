import 'package:flutter/material.dart';
import 'package:practica_08/src/main_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica 8',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 8'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 100, 100, 100),
      ),
      body: Container(
        color: Color.fromARGB(255, 237, 237, 237),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
    );
  }
}
