import 'package:flutter/material.dart';
import 'package:vaii/algoritmo/exercicios/celsius_farenheit.dart';
import 'package:vaii/algoritmo/exercicios/par_impar.dart';

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
            trailing: IconButton(icon: Icon(Icons.arrow_forward_ios, color: Colors.black38), onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ParImpar()));}),
          ),
          ListTile(
            title: Text("Converter Celsius para Farenheit"),
            subtitle: Text("Entrada: Temperatura(Celsius||Farenheit), Saída: Temperatura(Celsius||Farenheit)"),
            trailing: IconButton(icon: Icon(Icons.arrow_forward_ios, color: Colors.black38), onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>CelsiusFarenheit()));}),

          )
        ],
      )
    );
  }
}