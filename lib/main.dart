import 'package:flutter/material.dart';

void main() => runApp(MenuProvider());

class _MenuProvider {
  List<dynamic> opciones = [];
  _MenuProvider() {
   // cargarData();
  }

  Future <List<dynamic>> cargarData() async{
    
    
    final resp = await rootBundle.loadString('data/menu_opts.json');
      //print(data);
      Map dataMap = json.decode(resp);
      print(dataMap['rutas']);
      opciones = dataMap['rutas'];
    
    return opciones;
  }
}

final menuProvider = new _MenuProvider();