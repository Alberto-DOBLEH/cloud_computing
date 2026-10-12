import 'package:flutter/material.dart';

class ListaPage extends StatelessWidget {
  final List<String> _clasesPokemon = [
    'Normal',
    'Lucha',
    'Volador',
    'Tierra',
    'Roca',
    'Bicho',
    'Fantasma',
    'Acero',
    'Fuego',
    'Agua',
    'Planta',
    'Electrico',
    'Psiquico',
    'Hielo',
    'Dragon',
    'Siniestro',
    'Hada',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 10'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 111, 16, 16),
      ),
      body: ListView.builder(
        itemCount: _clasesPokemon.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('${_clasesPokemon[index]}'),
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdq0ivXCrWNdGDiksF2P1-IzsFddHXyoXXGG7UysrUmqwkuaBYBxc0tFRQ&s=1066'
                )
              ),
              trailing: Icon(Icons.arrow_right),
              onTap:() {},
          );
        }
      )
    );
  }
}