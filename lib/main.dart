import 'package:flutter/material.dart';

void main() => runApp(HomePageTemp());

class HomePageTemp extends StatelessWidget {
  final opciones = ['opcion1','opcion2','opcion3','opcion4','opcion5','opcion6'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componente Temporal'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Elemento 1'),
          ),
          Divider(),
                    ListTile(
            title: Text('Elemento 2'),
          ),Divider(),
                    ListTile(
            title: Text('Elemento 3'),
          ),Divider(),
                    ListTile(
            title: Text('Elemento 4'),
          ),Divider(),
                    ListTile(
            title: Text('Elemento 5'),
          ),Divider(),
                    ListTile(
            title: Text('Elemento 6'),
          ),Divider(),
        ],
      ),
    );
  }
}