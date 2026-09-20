import 'package:flutter/material.dart';
import 'package:practica_04/src/datos_recibidos.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final ctrlnom = new TextEditingController();
  final data = Data(nombre:'', sexo:'');
  int _valor = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title : Text('Practica 3'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: ctrlnom,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: 'Ingresa tu nombre',
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(height: 30),
            DropdownButton(
              value: _valor,
              items: [
                DropdownMenuItem(value: 1,child: Text('Mujer'),),
                DropdownMenuItem(value: 2,child: Text('Hombre'),),
              ]
            ,onChanged: (int? selected) {
              setState(() {
                _valor = selected!;
              });
            }),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[200], foregroundColor: Colors.white),
                child: Text('Enviar'),
                onPressed: () {
                  setState(() {
                    data.nombre = ctrlnom.text;

                    if(_valor == 1) {
                      data.sexo = 'Mujer';
                    } else {
                      data.sexo = 'Hombre';
                    }

                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DatosPage(data: data)
                    ));
                  });
                },
              ),
          ],
        )
        ),
      );
  }
}


class Data {
  String nombre;
  String sexo;

  Data({required this.nombre, required this.sexo});
}