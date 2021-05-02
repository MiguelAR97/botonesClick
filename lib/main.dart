import 'package:flutter/material.dart';

void main() => runApp(HomePageTemp());

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 32);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Contador Stateful widget'),
              centerTitle: true,
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Numero de Cliks', style: _estiloTexto),
                Text('$_conteo', style: _estiloTexto),
              ],
            )),
            floatingActionButton: _crearBotones()));
  }

