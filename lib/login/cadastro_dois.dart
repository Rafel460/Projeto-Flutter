import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vaii/main.dart';

class CadastroDois extends StatefulWidget {
  @override
  _CadastroDoisState createState() => _CadastroDoisState();
}

class _CadastroDoisState extends State<CadastroDois> {
  @override
  TextEditingController observacoes = new TextEditingController();
  int sexo = 0;
  bool segunda = false;
  bool terca = false;
  bool quarta = false;
  bool quinta = false;
  bool sexta = false;
  bool sabado = false;
  bool domingo = false;
  bool receberEmail = false;
  bool exibirMenus = false;
  double valorSelecionado =0;
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body:Stack(children: <Widget>[
        Image.asset("assets/espaco.gif",fit: BoxFit.cover, height: 2000),
        SingleChildScrollView(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              SizedBox(height: 50,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black26,
                  ),
                  width: 400,
                  height: 600,
                  child: Column(children: <Widget>[
                    SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 300,
                              child: TextField(
                                controller: observacoes,
                                maxLines: 5,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "Observações",
                                  prefixIcon: Icon(Icons.message),

                                  ),
                                  keyboardType: TextInputType.multiline,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Center(child: Text("Sexo (uiui)", style: GoogleFonts.manrope(fontSize: 20, color: Colors.white)),),
                              Column(children: <Widget>[
                              Radio(
                              value: 1,
                              groupValue: sexo,
                              onChanged: (value){
                                setState((){
                                  sexo = value;
                                });
                              },),
                              Text("Feminino", style: GoogleFonts.manrope(color: Colors.white)),
                              ],),
                              Column(children: <Widget>[
                                Radio(
                              value: 0,
                              groupValue: sexo,
                              onChanged: (value){
                                setState((){
                                sexo = value;
                                });
                              },
                            ),
                            Text("Masculino", style: GoogleFonts.manrope(color: Colors.white)),
                              ],),
                              Column(children: <Widget>[
                              Radio(
                                groupValue: sexo,
                                value: 2,
                                onChanged: (value){
                                  setState(() {
                                    sexo = value;
                                  });
                                },
                                ),
                                Text("Não Binário", style: GoogleFonts.manrope(color: Colors.white)),
                              ],),
                              
                        ],),
                        SizedBox(height: 25,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Dias em que gostaria de receber email", style: GoogleFonts.manrope(fontSize:20,color: Colors.white))
                        ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(children: <Widget>[
                              Checkbox(
                              value: segunda, 
                              onChanged: (value){
                              setState(() {
                               segunda = value;
                              });
                            },),
                            Text("S", style: GoogleFonts.manrope(color:Colors.white))
                            ],),
                            Column(
                              children: <Widget>[
                              Checkbox(
                              value: terca, 
                              onChanged: (value){
                              setState(() {
                               terca = value;
                              });
                            },),
                            Text("T", style: GoogleFonts.manrope(color:Colors.white))
                            ],),
                             Column(
                              children: <Widget>[
                              Checkbox(
                              value: quarta, 
                              onChanged: (value){
                              setState(() {
                               quarta = value;
                              });
                            },),
                            Text("Q", style: GoogleFonts.manrope(color:Colors.white))
                        ],),
                             Column(
                              children: <Widget>[
                              Checkbox(
                              value: quinta, 
                              onChanged: (value){
                              setState(() {
                               quinta = value;
                              });
                            },),
                            Text("Q", style: GoogleFonts.manrope(color:Colors.white))
                        ],),
                              Column(
                              children: <Widget>[
                              Checkbox(
                              value: sexta, 
                              onChanged: (value){
                              setState(() {
                               sexta = value;
                              });
                            },),
                            Text("S", style: GoogleFonts.manrope(color:Colors.white))
                        ],),
                          Column(
                              children: <Widget>[
                              Checkbox(
                              value: sabado, 
                              onChanged: (value){
                              setState(() {
                               sabado = value;
                              });
                            },),
                            Text("S", style: GoogleFonts.manrope(color:Colors.white))
                        ],),
                              Column(
                              children: <Widget>[
                              Checkbox(
                              value: domingo, 
                              onChanged: (value){
                              setState(() {
                               domingo = value;
                              });
                            },),
                            Text("D", style: GoogleFonts.manrope(color:Colors.white))
                        ],),],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                          Text("Desejo receber emails diariamente",style: GoogleFonts.manrope(color: Colors.white)),
                          Switch(value: receberEmail,
                          onChanged: (value){
                            setState(() {
                              receberEmail = value;
                              if(receberEmail == true){
                                segunda = true;
                                terca = true;
                                quarta = true;
                                quinta = true;
                                sexta = true;
                                sabado = true;
                                domingo = true;
                              }
                            });

                          },
                          )
                        ],),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                          Text("Desejo Exibir menus ao entrar",style: GoogleFonts.manrope(color: Colors.white)),
                          Switch(value: exibirMenus,
                          onChanged: (value){
                            setState(() {
                              exibirMenus = value;
                            });
                          },
                          )
                        ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                          Text("Quantos emails por dia",style: GoogleFonts.manrope(color: Colors.white)),
                         Expanded(
                          child: Slider(
                            value: valorSelecionado,
                            min: 0,
                            max: 5,
                            divisions: 5,
                            label: "Valor: ${valorSelecionado}",
                            onChanged: (value){
                            setState(() {
                              valorSelecionado = value;
                              });
                              },),),
                        ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            RaisedButton(color: Colors.purpleAccent,
                            child: Text("Finalizar Cadastro"),
                            onPressed: (){
                              SnackBar mostrar = new SnackBar(
                                content: SingleChildScrollView(
                                child: ListBody(children: <Widget>[
                                  Text("Sexo: $sexo"),
                                  Text("Observações: ${observacoes.text}"),
                                  Text("Dias do email: $segunda,$terca,$quarta,$quinta,$sexta,$sabado,$domingo"),
                                  Text("Receber Diariamente: $receberEmail"),
                                  Text("Exibir Menus: $exibirMenus"),
                                  Text("Emails por dia: $valorSelecionado"),
                                  OutlineButton(child: Text("Ok"), onPressed: (){
                                    setState(() {
                                      scaffoldKey.currentState.hideCurrentSnackBar();
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProjetoFlutter()));
                                    });
                                  },)

                                ],
                                 ),));
                                 scaffoldKey.currentState.showSnackBar(mostrar);
                            },
                            )
                        ],)
                  
                  ])
    )]))]));
  }
}