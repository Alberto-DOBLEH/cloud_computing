import 'package:flutter/material.dart';
import 'dart:convert';

class ViewPage extends StatefulWidget {
  @override
  State<ViewPage> createState() => _ViewPage();
}

class _ViewPage extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 12 - JSONs'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 150, 21, 21),
      ),
      body: Center(
        child: FutureBuilder(
          future:
            DefaultAssetBundle.of(context).loadString('assets/pokedex.json'),
          initialData: [],
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            var showData = json.decode(snapshot.data.toString());

            return ListView.builder(
              itemCount: showData.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(showData[index]['name']['english']),
                  subtitle: Text(showData[index]['type'].toString()),
                );
              }
            );
          }
        )
      )
    );
  }
}
