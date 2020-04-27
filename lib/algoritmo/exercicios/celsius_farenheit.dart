import 'package:flutter/material.dart';

class CelsiusFarenheit extends StatefulWidget {
  @override
  _CelsiusFarenheitState createState() => _CelsiusFarenheitState();
}

class _CelsiusFarenheitState extends State<CelsiusFarenheit> {
  @override
  TextEditingController celsius = new TextEditingController();
  double temperatura;
  mostrarResultado(far){
    AlertDialog alerta = AlertDialog(
      content: Container(
        height: 150,
        child: Column(children: <Widget>[
          Text("O Resultado em °F é $far"),
          RaisedButton(child: Text("Ok"), onPressed: (){Navigator.pop(context);},),
        ],),
      )
    );
    showDialog(context: context, builder: (context)=>alerta);
  }
  calcularFarenheit(temperatura){
    double farenheit = ((9*temperatura)/5) +32;
    mostrarResultado(farenheit);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Projeto Flutter", style: TextStyle(fontSize: 25.0)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Column(children: <Widget>[
          Center(child: Text("Insira a temperatura e tenha o resultado:", style: TextStyle(fontSize: 20.0),)),
          TextField(
            decoration: InputDecoration(labelText: "Temperatura em °C: "),
            controller: celsius,
            keyboardType: TextInputType.number,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(child: Text("Calcular", style: TextStyle(color: Colors.lightBlue)), onPressed: (){
                double temperatura = double.parse(celsius.text);
                calcularFarenheit(temperatura);
              },)
          ],)
      ],),)
    );
  }
}