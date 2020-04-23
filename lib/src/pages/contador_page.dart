import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();


}

class _ContadorPageState extends State<ContadorPage> { //el _es oara que quede privada

  final _estiloTexto = TextStyle(fontSize:35);

  int _conteo = 0;

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
            Text('Numero de taps', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto)            
          ],
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, //Posision del boton, las trae ya la clase
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {


          // print('Hola');

          _conteo++;

          setState(() {
            
          });

        },
      ),
    );
  }

}