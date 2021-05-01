import 'package:flutter/material.dart';

void main() => runApp(HomePageTemp());

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'opcion1',
    'opcion2',
    'opcion3',
    'opcion4',
    'opcion5',
    'opcion6'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componente Temporal'),
      ),
      body: ListView(children: _crearWidgets(context)),
    );
  }

  List<Widget> _crearWidgets(BuildContext context) {
    List<Widget> lista = new List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
        subtitle: Text('Subtitulo de la ' + opt),
        leading: Icon(Icons.account_box_rounded),
        trailing: Icon(Icons.keyboard_arrow_right_outlined),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => _buildPopupDialog(context, opt),
          );
        },
      );
      lista..add(tempWidget)..add(Divider());

      //lista.add(tempWidget);
      //lista.add(Divider());
    }
    return lista;
  }

  Widget _buildPopupDialog(BuildContext context, String opt) {
    return new AlertDialog(
      title: const Text('Me diste click'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Hola soy la " + opt),
        ],
      ),
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Text('Close'),
        ),
      ],
    );
  }
}
