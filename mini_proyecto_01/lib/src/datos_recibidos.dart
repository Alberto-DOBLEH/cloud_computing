import 'package:flutter/material.dart';

class DatosPage extends StatelessWidget {
  final double imc;
  final String resultado;
  final String imagen;

  DatosPage({required this.imc, required this.resultado, required this.imagen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Resultado del IMC'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('IMC: ${imc.toStringAsFixed(2)}'),
            SizedBox(height: 15),
            Text(resultado, textAlign: TextAlign.center),
            SizedBox(height: 20),
            Image.asset(imagen, width: 180, height: 180),
          ],
        ),
      ),
    );
  }
}
