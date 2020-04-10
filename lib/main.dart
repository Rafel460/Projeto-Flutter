import 'package:flutter/material.dart';

void main(){
  runApp(ProjetoFlutter());
}

class ProjetoFlutter extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Projeto Flutter'),
          centerTitle: true,
          actions: <Widget>[
            PopupMenuButton(icon: Icon(Icons.menu),
            itemBuilder: (context)=>[
              /*Aqui vão as opções do Botão, cada
              item PopupMenuItem possui um child */
              PopupMenuItem(child: Text('Teste'),),
              PopupMenuItem(child: Text('Teste 2'),),
              PopupMenuItem(child: Text('Teste 3'),),
            ],),
          ],
        ),
        body: Center(
          
        ),
        persistentFooterButtons: <Widget>[
         IconButton(icon: Icon(Icons.people_outline), onPressed: null),
         IconButton(icon: Icon(Icons.new_releases), onPressed: null)
        ],
      )
    );
  }
}