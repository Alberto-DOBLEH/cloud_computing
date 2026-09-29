import 'package:flutter/material.dart';

class BottomNavigatorPage extends StatefulWidget {
  @override
  State<BottomNavigatorPage> createState() => _BottomNavigatorPage();
  }

class _BottomNavigatorPage extends State<BottomNavigatorPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      Center(
        child: Text('Fotos',
        style: TextStyle(color: Color.fromARGB(255, 210, 55, 237),fontSize: 50)),
      ),
      Center(
        child: Text('Window',
        style: TextStyle(color: Color.fromARGB(255, 149, 38, 168), fontSize: 50)),
      ),
      Center(
        child: Text('Buscar',
        style: TextStyle(color: Color.fromARGB(255, 80, 20, 90), fontSize: 50)),
        ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 7'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 90, 75, 107),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 175, 117, 209),
        currentIndex:_currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_library),
            label: 'Fotos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.window),
            label: 'Window',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}