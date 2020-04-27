import 'package:flutter/material.dart';
import 'package:vaii/conversa/conversa.dart';

class Seguindo extends StatefulWidget {
  @override
  _SeguindoState createState() => _SeguindoState();
}

class _SeguindoState extends State<Seguindo> {
  @override
  
  Icon iconeVar = new Icon(Icons.check_circle_outline);
  mudarIcone(){
    iconeVar = new Icon(
      Icons.check_circle, color: Colors.lightGreenAccent
    );
  }
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Josefá"),
            subtitle: Text("Eae Cara"),
            trailing: iconeVar,
            leading: CircleAvatar(backgroundImage: NetworkImage("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2Ff5%2F9b%2F1b%2Ff59b1b0cc430702e82dea90780d7f87d.gif&f=1&nofb=1")),
            onTap:(){
              mudarIcone();
              Navigator.push(context, MaterialPageRoute(
              builder: (context) => Conversa()
            ));}
          )  
        ],
      ),
    ); 
  }
}
