import 'package:flutter/material.dart';

class ListaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica Lista'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 111, 16, 16),
      ),
      body: ListView(
        children: [
          ListTile(
            contentPadding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Normal'),
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/pokemongo_es_gamepedia/images/2/23/Type_Normal.png/revision/latest?cb=20161221101619'
                )
              ),
              trailing: Icon(Icons.arrow_right),
              onTap:() {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Lucha'),
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/pokemongo_es_gamepedia/images/6/66/Type_Lucha.png/revision/latest?cb=20161221101900'
                )
              ),
              trailing: Icon(Icons.arrow_right),
              onTap:() {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Volador'),
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/pokemongo_es_gamepedia/images/8/80/Type_Volador.png/revision/latest?cb=20161221102041'
                )
              ),
              trailing: Icon(Icons.arrow_right),
              onTap:() {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Veneno'),
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/pokemongo_es_gamepedia/images/f/f1/Type_Veneno.png/revision/latest?cb=20161221102029'
                )
              ),
              trailing: Icon(Icons.arrow_right),
              onTap:() {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Tierra'),
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/pokemongo_es_gamepedia/images/4/49/Type_Tierra.png/revision/latest?cb=20161221102022'
                )
              ),
              trailing: Icon(Icons.arrow_right),
              onTap:() {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Roca'),
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/pokemongo_es_gamepedia/images/b/b3/Type_Roca.png/revision/latest?cb=20161221101959'
                )
              ),
              trailing: Icon(Icons.arrow_right),
              onTap:() {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Bicho'),
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/pokemongo_es_gamepedia/images/9/91/Type_Bicho.png/revision/latest?cb=20161221101714'
                )
              ),
              trailing: Icon(Icons.arrow_right),
              onTap:() {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Fantasma'),
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/pokemongo_es_gamepedia/images/1/11/Type_Fantasma.png/revision/latest?cb=20161221101747'
                )
              ),
              trailing: Icon(Icons.arrow_right),
              onTap:() {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Acero'),
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/pokemongo_es_gamepedia/images/2/2c/Type_Acero.png/revision/latest?cb=20161221101508'
                )
              ),
              trailing: Icon(Icons.arrow_right),
              onTap:() {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Fuego'),
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/pokemongo_es_gamepedia/images/3/38/Type_Fuego.png/revision/latest?cb=20161221101820'
                )
              ),
              trailing: Icon(Icons.arrow_right),
              onTap:() {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Agua'),
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/pokemongo_es_gamepedia/images/b/b7/Type_Agua.png/revision/latest?cb=20161221101702'
                )
              ),
              trailing: Icon(Icons.arrow_right),
              onTap:() {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Planta'),
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/pokemongo_es_gamepedia/images/6/60/Type_Planta.png/revision/latest?cb=20161221101938'
                )
              ),
              trailing: Icon(Icons.arrow_right),
              onTap:() {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Electrico'),
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/pokemongo_es_gamepedia/images/c/c7/Type_El%C3%A9ctrico.png/revision/latest?cb=20161221101739'
                )
              ),
              trailing: Icon(Icons.arrow_right),
              onTap:() {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Psiquico'),
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/pokemongo_es_gamepedia/images/7/72/Type_Ps%C3%ADquico.png/revision/latest?cb=20161221101950'
                )
              ),
              trailing: Icon(Icons.arrow_right),
              onTap:() {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Hielo'),
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/pokemongo_es_gamepedia/images/3/35/Type_Hielo.png/revision/latest?cb=20161221101836'
                )
              ),
              trailing: Icon(Icons.arrow_right),
              onTap:() {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Dragon'),
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/pokemongo_es_gamepedia/images/d/d4/Type_Drag%C3%B3n.png/revision/latest?cb=20161221101725'
                )
              ),
              trailing: Icon(Icons.arrow_right),
              onTap:() {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Siniestro'),
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/pokemongo_es_gamepedia/images/3/39/Type_Siniestro.png/revision/latest?cb=20161221102014'
                )
              ),
              trailing: Icon(Icons.arrow_right),
              onTap:() {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Hada'),
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/pokemongo_es_gamepedia/images/4/49/Type_Hada.png/revision/latest?cb=20161221101821'
                )
              ),
              trailing: Icon(Icons.arrow_right),
              onTap:() {},
          ),
        ],
      )
    );
  }
}