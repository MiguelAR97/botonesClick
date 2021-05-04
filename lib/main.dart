import 'package:flutter/material.dart';

void main() => runApp(_MenuProvider());
 
class _MenuProvider {
  List<dynamic> generos = [];
  _MenuProvider() {
   // cargarData();
  }

  Future <List<dynamic>> cargarData() async{
    
    
    final resp = await rootBundle.loadString('data/menu_opts.json');
      //print(data);
      Map dataMap = json.decode(resp);
      print(dataMap['rutas']);
      generos = dataMap['rutas'];
    
    return generos;
     final generos = [
    'Genero 1',
    'Genero 2',
    'Genero 3',
    'Genero 4'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generos de Música'),
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
      title: const Text('Me diste click'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("El genero es "+opt),
        ],
      ),
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Text('Close'),
  }
}

final menuProvider = new _MenuProvider();