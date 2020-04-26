import 'package:flutter/material.dart';

class Chamada extends StatefulWidget {
  @override
  _ChamadaState createState() => _ChamadaState();
}

class _ChamadaState extends State<Chamada> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children:[
          ListTile(
            title: Text("Rafael"),
            subtitle: Text("Namorado da Ana"),
            trailing: IconButton(icon: Icon(Icons.call_end, color:Colors.deepPurple),onPressed: (){print("Clicou");})
            
          ),
          ListTile(
            title: Text("Ana Lívia"),
            subtitle: Text("Namorada do Rafael"),
            trailing: IconButton(icon: Icon(Icons.call_end, color:Colors.deepPurple),onPressed: (){print("Clicou");})

          ),
          ListTile(
            title: Text("Jovane"),
            subtitle: Text("Amigo do Rafael"),
            trailing: IconButton(icon: Icon(Icons.call_end, color:Colors.deepPurple),onPressed: (){print("Clicou");})
          ),
        ],
      ),
    
    );
  }
}