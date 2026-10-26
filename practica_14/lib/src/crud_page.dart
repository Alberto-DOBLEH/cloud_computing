import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class CrudPage extends StatefulWidget {
  @override
  State<CrudPage> createState() => _CrudPage();
}

class _CrudPage extends State<CrudPage> {
  late String _path;
  late Database database;

  @override
  void initState() {
    _createDB();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica - SQLite'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _insertDB();
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 100, 10, 10),
                backgroundColor: Color.fromARGB(255, 233, 131, 131),
              ),
              child: Text('INSERTAR')
            ),
            ElevatedButton(
              onPressed: () {
                _removeDB();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 86, 80, 24),
                foregroundColor: Color.fromARGB(255, 216, 201, 60)
              ),
              child: Text('REMOVER'),
            ),
            ElevatedButton(
              onPressed: () {
                _updateDB();
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 10, 100, 52),
                backgroundColor: Color.fromARGB(255, 22, 208, 108),
              ),
              child: Text('ACTUALIZAR')
            ),
            ElevatedButton(
              onPressed: () {
                _showDB();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 26, 25, 80),
                foregroundColor: Color.fromARGB(255, 69, 66, 209)
              ),
              child: Text('MOSTRAR'),
            ),
          ],
        ),
      ),
    );
  }

  void _createDB() async {
    var dbpath = await getDatabasesPath();

    _path = '{$dbpath}my_db.db';

    database = await openDatabase(_path, version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
          'CREATE TABLE test(id INETGER PRIMARY KEY, name TEXT, nickname TEXT)'
        );
      }
    );
  }

  void _insertDB() async {
    await database.transaction((txn) async {
      int reg1 = await txn.rawInsert('INSERT INTO test(name, nickname) VALUES ("Gojo Satoru", "The Honored One")');
      print('Insert $reg1');

      int reg2 = await txn.rawInsert('INSERT INTO test(name, nickname) VALUES (?,?)',
      ['Garou','The Cosmic Monster']);
      print('Insert $reg2');
    });
  }

  void _removeDB() async {
    int rem = await database.rawDelete('DELETE FROM test WHERE name = ?', ['Garou']);
    print('Remove: $rem');
  }

  void _updateDB() async {
    int upt = await database.rawUpdate('UPDATE test SET nickname = ? WHERE name = ?', ['The Goat', 'Gojo Satoru']);
    print('Update: $upt');
  }

  void _showDB() async {
    List<Map> show = await database.rawQuery('SELECT * FROM test');
    print(show);
  }
}