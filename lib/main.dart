import 'package:flutter/material.dart';
import 'seguindo.dart';
import 'novo_treco.dart';
import 'chamada.dart';
import 'algoritmo/exercicios_principal.dart';
import 'login/login.dart';
void main(){
  runApp(MaterialApp(home: ProjetoFlutter()));

}

class ProjetoFlutter extends StatefulWidget {
  @override
  _ProjetoFlutterState createState() => _ProjetoFlutterState();
}

class _ProjetoFlutterState extends State<ProjetoFlutter> {
  @override
  List listadeTelas = [Seguindo(),NovoTreco(),Chamada()];
  int indice = 0;
  
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(      
        child: ListView(
          children: <Widget>[
            DrawerHeader(  
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),    
             child: Center(
               child: 
                Column(children:[
                 Row(
                 children: <Widget>[
                 CircleAvatar(backgroundImage: NetworkImage("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2Ff5%2F9b%2F1b%2Ff59b1b0cc430702e82dea90780d7f87d.gif&f=1&nofb=1"),),
               ],),
               ListTile(
                 title: Text("JoaozinhoGameplays RJ", style: TextStyle(color: Colors.white, fontSize: 15.0),),
                 subtitle: Text("joaozingameplais@brabor"),
                 trailing: IconButton(icon: Icon(Icons.arrow_downward, size: 20, color: Colors.white),onPressed: (){
                   setState((){
                     Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => Login()
                      ));
                   });
                   
                 },)
               ),],
             ))
            ),
            ListTile(
              title: Text("Exercicios de algoritmos"),
              leading: Icon(Icons.assessment, color: Colors.black),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                builder: (context) => ExerciciosPrincipal()
              ));},
            )
            ],),
      ),
      appBar: AppBar(
        title: Text("Projeto Flutter", style: TextStyle(fontSize:25.0)),
        backgroundColor: Colors.deepPurple,
        
      ),
      body: Container(
        child: listadeTelas[indice],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indice,
        selectedItemColor: Colors.black87,
        elevation: 10.0,
        selectedFontSize: 16,
       
        items:[
  
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            activeIcon: Icon(Icons.favorite, color: Colors.redAccent, size: 40.0,),
            title: Text("Seguindo")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fiber_new),
             activeIcon: Icon(Icons.fiber_new, color: Colors.blue, size: 40.0,),
            title: Text("Novo Treco")
          ),
             BottomNavigationBarItem(
            icon:Icon(Icons.add_call),
            activeIcon: Icon(Icons.add_call, color:Colors.lightGreen,size: 40.0,),
            title: Text("Nova Chamada")
          ),
        ],
        onTap: (index){setState((){
          indice = index;
        });},
      ),
    );
  }
}