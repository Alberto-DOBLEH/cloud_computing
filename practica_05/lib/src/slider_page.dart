import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  State<SliderPage> createState() => _SliderPage();
}

class _SliderPage extends State<SliderPage> {
  double valor = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dun Dun Dun'),
        centerTitle: true,
        backgroundColor: Colors.orange[200],
        elevation: 0.0,
      ),
      body:Column(
        children: [
          Container(
          height: 50,
          width: 400,
          color: Colors.black,
          child: Slider(
            value: valor,
            min: 0,
            max: 100,
            label: valor.round().toString(),
            divisions: 100,
            onChanged: (value) {
              setState(() {
                valor = value;
              });
            })
          ),
            Container(
              width: 400,
              height: 500,
              color: Colors.black,
              child: Center(
                child: Image(
                  image: AssetImage('assets/logo.png'),
                  height: valor,
                  width: valor,
                ),
              ),
            ),
        ],
      )
    );
  }
}