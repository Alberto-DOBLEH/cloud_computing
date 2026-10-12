import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage('https://avatarfiles.alphacoders.com/377/thumb-1920-377458.jpg'),
                  backgroundColor: Color.fromARGB(100, 0, 0, 0),
                ),
                SizedBox(height: 5,),
                Text('Alberto DobleH', style: TextStyle(fontSize: 30)),
                SizedBox(height: 5,),
                Text('El mero mero, asi nomas viejon', style: TextStyle(fontSize: 15)),
                SizedBox(height: 20,),
              ],
            )
          )
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.person, color: Color.fromARGB(100, 0, 0, 0)),
          title: Text('Perfil')
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.assessment, color: Color.fromARGB(100, 0, 0, 0)),
          title: Text('Dashboard')
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.search, color: Color.fromARGB(100, 0, 0, 0)),
          title: Text('Buscar')
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.settings, color: Color.fromARGB(100, 0, 0, 0)),
          title: Text('Configuracion')
        ),
      ]
    );
  }
}