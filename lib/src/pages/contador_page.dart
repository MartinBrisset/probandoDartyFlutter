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
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _reset ),
        Expanded(child: SizedBox(width: 10.0,)),
        FloatingActionButton( child: Icon(Icons.remove), onPressed: _sustraer ),
        SizedBox(width: 10.0,),
        FloatingActionButton( child: Icon(Icons.add), onPressed: _agregar ),
      ],
    );
    
  }

  void _agregar() {
    setState(() => _conteo++ );
  }
  
  void _sustraer() {
    setState(() => _conteo-- );
  }

  void _reset() {
    setState(() => _conteo = 0 );
  }

}