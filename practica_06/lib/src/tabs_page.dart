import 'package:flutter/material.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Paginas'),
          centerTitle: true,
          bottom: TabBar(
            tabs:[
              Tab(icon: Icon(Icons.accessibility_new_outlined)),
              Tab(icon: Icon(Icons.person_2_outlined)),
              Tab(icon: Icon(Icons.web)),
              Tab(icon: Icon(Icons.phone_android)),
            ])
        ),
        body: TabBarView(
          children: [
            Icon(Icons.accessibility_new_outlined),
            Icon(Icons.person_2_outlined),
            Icon(Icons.web),
            Icon(Icons.phone_android)
          ]
        )
      )
    );
  }
}