import 'package:flutter/material.dart';

class Conversa extends StatefulWidget {
  @override
  _ConversaState createState() => _ConversaState();
}

class _ConversaState extends State<Conversa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text("Josefá", style: TextStyle(fontSize: 25.0),),
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: <Widget>[
          Column(children: <Widget>[
            Row(children: <Widget>[
              Text("Eae Cara", style: TextStyle(fontSize: 20.0)),
              Icon(Icons.check_circle, color: Colors.lightGreenAccent),
            ],)
          ],)
        ],
      ),
    );
  }
}