import 'package:flutter/material.dart';
import 'package:mini_proyecto_01/src/datos_recibidos.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final pesoCtrl = new TextEditingController();
  final estaturaCtrl = new TextEditingController();

  double calcularIMC(double peso, double estatura) {
    return peso / (estatura * estatura);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Calculadora de IMC'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: pesoCtrl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Ingresa tu peso en kilogramos',
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: estaturaCtrl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Ingresa tu estatura en metros',
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[200],
                foregroundColor: Colors.white,
              ),
              child: Text('Calcular IMC'),
              onPressed: () {
                double? peso = double.tryParse(pesoCtrl.text);
                double? estatura = double.tryParse(estaturaCtrl.text);

                if (peso == null ||
                    estatura == null ||
                    peso <= 0 ||
                    estatura <= 0) {
                  return;
                }

                double imc = calcularIMC(peso, estatura);
                String resultado;
                String imagen;

                if (imc < 18) {
                  resultado =
                      'Peso Bajo. Necesario valorar signos de desnutrición';
                  imagen = 'assets/imc_bajo.png';
                } else if (imc < 25) {
                  resultado = 'Normal';
                  imagen = 'assets/imc_normal.png';
                } else if (imc < 27) {
                  resultado = 'Obesidad';
                  imagen = 'assets/imc_obesidad.png';
                } else if (imc < 30) {
                  resultado = 'Obesidad grado I. Riesgo relativo para desarrollar enfermedades cardiovasculares.';
                  imagen = 'assets/imc_obesidad_grado_1.png';
                } else if (imc < 40) {
                  resultado = 'Obesidad grado II. Riesgo relativo muy alto para el desarrollo de enfermedades cardiovasculares.';
                  imagen = 'assets/imc_obesidad_grado_2.png';
                } else {
                  resultado = 'Obesidad grado III. Extrema o mórbida. Riesgo relativo extremadamente alto para el desarrollo de enfermedades cardiovasculares.';
                  imagen = 'assets/imc_obesidad_grado_3.png';
                }

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DatosPage(
                      imc: imc,
                      resultado: resultado,
                      imagen: imagen,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
