import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


  final estiloTexto = new TextStyle(fontSize: 35); //variable const en js

  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Esto es un titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de taps', style: estiloTexto),
            Text('$conteo', style: estiloTexto)            
          ],
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, //Posision del boton, las trae ya la clase
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {


          print('Hola');


        },
      ),
    );
  }
}