import 'package:flutter/material.dart';

class NovoTreco extends StatefulWidget {
  @override
  _NovoTrecoState createState() => _NovoTrecoState();
}

class _NovoTrecoState extends State<NovoTreco> {
  @override
  TextEditingController nomedoProjeto = new TextEditingController();
  alertaConcluido(){
    AlertDialog concluido = new AlertDialog(
      content: Container(
        width: 100,
        height: 70,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
        ),
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text("O projeto ${nomedoProjeto.text} foi concluido!", style: TextStyle(fontSize: 15.0))
          ],),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(child: Text("Ok", style: TextStyle(color: Colors.purpleAccent)), onPressed: (){Navigator.of(context).pop();},)
            ],
          )
      ],))
    );
    showDialog(
      context : context,
      builder: (context) => concluido
    );
  }
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        TextField(
          decoration: InputDecoration(
            labelText: "Insira o nome do treco aqui",
            hintText: "Novo Treco"
          ),
          keyboardType: TextInputType.text,
          controller: nomedoProjeto,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.end,children: <Widget>[
          FlatButton(child: Text("Construir ${nomedoProjeto.text}", style: TextStyle(color: Colors.purple),),onPressed: (){setState((){
          alertaConcluido();
        });},)
        ],)
      
      ],)
    );
  }
}