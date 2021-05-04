
    
import'dart:convert';
import'package:flutter/services.dart'show rootBundle;
class_MenuProvider {​​​​​
List<dynamic> opciones = [];
_MenuProvider() {​​​​​
// cargarData();
  }​​​​​
Future <List<dynamic>> cargarData() async{​​​​​

final resp = await rootBundle.loadString('data/menu_opts.json');
//print(data);
Map dataMap = json.decode(resp);
print(dataMap['rutas']);
      generos = dataMap['rutas'];
return generos;
class HomePageTemp extends StatelessWidget {
  final generos = [
    'Genero musical 1',
    'Genero musical 2',
    'Genero musical 3',
    'Genero musical 4'
 
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Musica'),
      ),
      body: ListView(children: _crearWidgets(context)),
    );
  }

  List<Widget> _crearWidgets(BuildContext context) {
    List<Widget> lista = new List<Widget>();
    for (String opt in generos) {
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
      title: const Text('Opcion de Música'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("el genero es "+opt),
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

  }​​​​​
}​​​​​
final menuProvider = new_MenuProvider();
