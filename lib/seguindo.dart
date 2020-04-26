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
/* children: [
        Container( //Pelo menos umas quatro dessas linhas 
           decoration: BoxDecoration(
             border: Border.all(style: BorderStyle.solid),
        
           ),
           
         child: Row(
          children: <Widget>[
            Container(
              child: Image(image: NetworkImage("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2Ff5%2F9b%2F1b%2Ff59b1b0cc430702e82dea90780d7f87d.gif&f=1&nofb=1"),width: 60.0,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),),
              Column(children: <Widget>[
                Text("Pessoa 1", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                Row(children: <Widget>[
                  Icon(Icons.check_circle, color: Colors.purple),
                  Text("Vc viu aquilo cara?", style: TextStyle(fontSize: 15.0))
                ],)
              ],)
          ],))
      ]*/ 