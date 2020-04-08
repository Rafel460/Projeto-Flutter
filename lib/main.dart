

import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text('Olá Mundo!'),
        ),
        body: Center(
          child: Title(color: Colors.black, child: Text('Isso é um teste')),

        )
        
      )
  ),
  );
}