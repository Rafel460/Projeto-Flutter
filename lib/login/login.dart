import 'package:flutter/material.dart';
import 'package:vaii/main.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  TextEditingController email = new TextEditingController();
  TextEditingController senha = new TextEditingController();
  final snackBarKey = new GlobalKey<ScaffoldState>();
  Icon erro = new Icon(null);
  bool salvarDados = false;
  Widget build(BuildContext context) {
    return Scaffold(   
      key: snackBarKey,
      body: Stack(
        children: [         
        Image.asset("assets/espaco.gif", fit: BoxFit.cover, height: 2000,),
        SingleChildScrollView(
          child:  Column(
          children: <Widget>[
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text("Bem vindo!", style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold, color: Colors.white),),],),
            SizedBox(height: 55,),
            Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20)
              ),
              width: 400,
              height: 300,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 15,),
                  Container(
                    width: 300,
                    child:TextField(
                    controller: email,
                    onChanged: (vari){
                      setState((){
                      vari = null;
                      erro = new Icon(null);
                      });   
                    },
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    hintText: "_adress_@gmail.com",
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: erro,
                  )
                ),),
                SizedBox(height: 25),
                Container(
                  width: 300,
                  child: TextField(
                    controller: senha,
                    obscureText: true,
                    onChanged: (vari){
                      setState((){
                      vari = null;
                      erro = new Icon(null);
                      });   
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Senha",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: erro, 
                    ),
                ),),
               SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                  Text("Salvar dados", style: TextStyle(color: Colors.white, fontSize: 15)),
                  Switch(
                  value: salvarDados,
                  onChanged: (valor){
                    setState((){
                      salvarDados = valor;
                    }); 
                  },) ],),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                   RaisedButton(child: Text("Cadastre-se"), color: Colors.purpleAccent, onPressed: (){},),
                   RaisedButton(
                     child: Text("Entrar", style: TextStyle(color: Colors.white)),color: Colors.black, onPressed: (){
                       setState((){
                         if(email.text == "aulaflutter" && senha.text == "123456"){
                           SnackBar deuBom = new SnackBar(
                             backgroundColor: Colors.purpleAccent,
                             content: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: <Widget>[
                                 Text("Login Efetuado!", style: TextStyle(color: Colors.white)),
                                 OutlineButton(child: Text("Ok", style: TextStyle(color: Colors.white),), onPressed: (){
                                  snackBarKey.currentState.hideCurrentSnackBar();
                                  Navigator.push(context, 
                                  MaterialPageRoute(
                                    builder: (context) => ProjetoFlutter()
                                  )
                                  );
                                 },)
                             ],)
                           );
                           
                           snackBarKey.currentState.showSnackBar(deuBom);
                         }else{
                           erro = new Icon(Icons.error, color: Colors.redAccent,);
                         }
                       });
                   },)
               ],)
              ],),)
            
        ],) 
        
        ,)
       
        ]),
  );
  }
}