import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Practica 02'),
        centerTitle: true,
      ),
      body: Center (
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber, foregroundColor: Colors.white),
                onPressed: () {
                  Navigator.pushNamed(context, '/Page2');
                },
              child: Text('Segunda pagina'),
              ),
            ElevatedButton( 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal, foregroundColor: Colors.tealAccent),
              onPressed: () {
                Navigator.pushNamed(context, '/Page3');
              }, 
              child: Text ('Tercera Pagina'),
              )
            ],
          ),
        ),
      );
  }
}