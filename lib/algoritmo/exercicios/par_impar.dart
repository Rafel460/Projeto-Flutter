import 'package:flutter/material.dart';

class ParImpar extends StatefulWidget {
  @override
  _ParImparState createState() => _ParImparState();
}

class _ParImparState extends State<ParImpar> {
  @override
  int variavel;
  bool status;
  TextEditingController campo1 = new TextEditingController();
  mostrarResultado(status){
    if(status == true){
       AlertDialog alerta = new AlertDialog(
          content: Container(
            height: 100,
            child: Column(children: <Widget>[
              Center(child: Text("Resultado => $variavel É Par", style: TextStyle(fontSize: 20.0)),),
              OutlineButton(child: Text("Ok"),onPressed: (){Navigator.pop(context);},)
            ],)
          )
        );
        showDialog(context: context, builder: (context) => alerta);
    }else{
       AlertDialog alerta = new AlertDialog(
          content: Container(
            height: 100,
            child: Column(children: <Widget>[
              Center(child: Text("Resultado => $variavel É Impar", style: TextStyle(fontSize: 20.0)),),
              OutlineButton(child: Text("Ok"),onPressed: (){Navigator.pop(context);},)
            ],)
          )
        );
        showDialog(context: context, builder: (context) => alerta);
    }
  }
  calcularPar(valor){
    if(valor % 2 == 0){
      print("Par");
      status = true;
      mostrarResultado(status);
    }else{
      print("É impar");
      status = false;
      mostrarResultado(status);
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Projeto Flutter", style: TextStyle(fontSize: 25.0),),
      ),
      body: 
      Column(
        children: <Widget>[
        Container(child: Center(child: Text("Insira um valor no campo de texto abaixo e descubra se ele é par ou impar"),)),
        TextField(
          decoration: InputDecoration(labelText: "Insira aqui", hintText: "numeros de 0...infinito"),
          controller: campo1,
          keyboardType: TextInputType.number,
        ),
        RaisedButton(child: Text("Calcular"), onPressed: (){
          setState((){
            variavel = int.parse(campo1.text);
            calcularPar(variavel);
          });
        },)
      ],)
    );
  }
}