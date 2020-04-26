import 'package:flutter/material.dart';

class ExerciciosPrincipal extends StatefulWidget {
  @override
  _ExerciciosPrincipalState createState() => _ExerciciosPrincipalState();
}

class _ExerciciosPrincipalState extends State<ExerciciosPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Projeto Flutter", style: TextStyle(fontSize: 25.0)),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Definir se o Numero é Par ou Impar"),
            subtitle: Text("Entrada: Numero Inteiro, Saída: Par||Impar"),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.black38),
          ),
          ListTile(
            title: Text("Converter Celsius para Farenheit"),
            subtitle: Text("Entrada: Temperatura(Celsius||Farenheit), Saída: Temperatura(Celsius||Farenheit)"),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.black38),
          )
        ],
      )
    );
  }
}