import 'package:flutter/material.dart';
void main(){
  runApp(ProgramaBrabor());
}
void alertar(){
  print('Teste 1,2');
}

class ProgramaBrabor extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.grey, 
        title:Text('Fala nerds, tranqs?', style: TextStyle(fontFamily: 'Verdana'),),
        centerTitle: true,
        ),
        body: Center(
          child: Column( //-> Cria um child com uma coluna de elementos!
            children: <Widget>[ //Atributo com um array de widgets
            Text('Peeeter Aqui', style: TextStyle(fontSize: 40.0,)),
            FloatingActionButton(child: Icon(Icons.arrow_forward)),
            
          ],)
          //child: 
  
        ),
      ),
      
    );
  }
}