import 'package:flutter/material.dart';

class IncrementPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IncrementPageState();
  }
}

class _IncrementPageState extends State<IncrementPage>{
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text('Mi primer APP en flutter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Text('Numero de Click', style : TextStyle(fontSize: 25)),
              Text('$_conteo', style: TextStyle(fontSize: 30, color:Colors.red))
              ],
            )
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                heroTag: 'btn_restar',
                child: Icon(Icons.remove),
                onPressed: () {
                  setState(() {
                    _conteo--;
                  });
                },
              ),
              const SizedBox(width: 10),
              FloatingActionButton(
                heroTag: 'btn_sumar',
                child: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    _conteo++;
                  });
                },
              ),
            ],
          ),
      );
    }
}