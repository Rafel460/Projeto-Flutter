/* TODO:
• Campo de switch para informar: Se deseja ser contactado diariamente, Se deseja exibir menus ao
logar no sistema, Se deseja perguntar ao usuário quando algum arquivo for ser salvo
• Campo de slider perguntando quantos e-mails devem ser enviados nos dias da semana
selecionados (de 0 a 5, com intervalos de 1 em 1)
• Ação do botão: exibir uma mensagem ao usuário contendo todos os dados informados no formulário.

*/ 
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vaii/login/cadastro_dois.dart';
class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController nome = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController senha = new TextEditingController();
  TextEditingController senhaC = new TextEditingController();
  TextEditingController observacoes = new TextEditingController();
  Icon erroSenha = new Icon(null);
  int sexo = 0;
  Widget build(BuildContext context) {
   return Scaffold(
     key: scaffoldKey,
     body: Stack(
       children: <Widget>[
        Image.asset("assets/espaco.gif", fit: BoxFit.cover, height: 2000),
       SingleChildScrollView(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             SizedBox(height: 50),
             Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.black26,                 
                 ),
                 width: 400,
                 height: 500,
               child: Column(
                 children: <Widget>[
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                     Text("Insira as Informações", style: GoogleFonts.roboto(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30)),],),
                    SizedBox(height: 50,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                     Container(
                       width:300,
                       child:TextField(
                       decoration: InputDecoration(border: OutlineInputBorder(),
                       prefixIcon: Icon(Icons.person),
                       labelText: "Nome Completo"
                       ),
                       controller: nome,
                       ),),],),
                       SizedBox(height: 25,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                          Container(
                            width: 300,
                            child:TextField(
                              controller: email,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.alternate_email),
                                border: OutlineInputBorder(),
                                labelText: "Email",
                              ),),)],),
                          SizedBox(height: 25,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 300,
                                child: TextField(
                                  controller: senha,
                                  keyboardType: TextInputType.number,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon: erroSenha,
                                    labelText: "Senha"),
                                    onChanged: (valor){
                                      setState((){
                                        valor = null;
                                        erroSenha = new Icon(null);
                                      });
                                    },
                                 ),)],),
                                  SizedBox(height: 25,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width: 300,
                                        child: TextField(
                                          controller: senhaC,
                                          keyboardType: TextInputType.number,
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            prefixIcon: Icon(Icons.lock_outline),
                                            suffixIcon: erroSenha,
                                            labelText: "Confirmação de senha",
                                            ),
                                            onChanged: (valor){
                                              setState((){
                                                valor = null;
                                                erroSenha = new Icon(null);
                                              });
                                            },
                                        ),)
                                  ],),
                                  SizedBox(height: 25,),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        RaisedButton(child: Text("Próxima Página", style: TextStyle(color:Colors.white)), color:Colors.black, onPressed: (){
                                          setState((){
                                            if(senha.text != senhaC.text){
                                            erroSenha = new Icon(Icons.warning, color: Colors.red,);
                                              SnackBar deuRuim = new SnackBar(
                                                backgroundColor: Colors.purpleAccent,
                                                content: Container(
                                                color: Colors.purpleAccent,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                  Text("As senhas estão incompatíveis", style: TextStyle(color: Colors.white)),
                                                  OutlineButton(
                                                    child: Text("Ok", style: TextStyle(color: Colors.white),),
                                                    onPressed: (){
                                                    scaffoldKey.currentState.hideCurrentSnackBar();
                                                    },)
                                                ],),
                                              ));
                                              scaffoldKey.currentState.showSnackBar(deuRuim);
                                            }else{
                                              AlertDialog deuBom = new AlertDialog(
                                                title: Text("Confirme a suas informações"),
                                                content: SingleChildScrollView(
                                                child: ListBody(
                                                  children: <Widget>[
                                                    Text("Nome: ${nome.text}"),
                                                    Text("Senha: ${senha.text}"),
                                                    Text("Email: ${email.text}"),
                                                    Text("Está correto?")
                                                  ],
                                              
                                                  ),
                                                
                                              ),
                                              actions: <Widget>[
                                                OutlineButton(child: Text("Não"), onPressed: (){setState(() {
                                                  Navigator.pop(context);
                                                });},),
                                                OutlineButton(child: Text("Sim"), onPressed: (){setState(() {
                                                  Navigator.push(context, MaterialPageRoute(
                                                    builder: (context)=> CadastroDois()
                                                  ));
                                                });},)
                                              ],
                                            );   
                                            showDialog(context: context,
                                            builder: (context) => deuBom
                                            );
                                            }
                                          });
                                        },)
                                    ],)
                                  ),
               ],),)
         ],)
       ),
     ],)
   );
  }
}