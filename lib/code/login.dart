import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:protect_trade/code/Cadastro.dart';
import 'package:protect_trade/conta/usuario.dart';



const name_Logo = Color.fromARGB(255, 67, 64, 64);
const fundo = Color.fromARGB(255, 78, 76, 76);
const B = Color.fromARGB(255, 37, 121, 217);

String usuario = " ";

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>{

  final _formu = GlobalKey<FormState>();

  var email = new TextEditingController();
  var senha = new TextEditingController();
  var nome = new TextEditingController();
  var url = new TextEditingController();
  String msg = '';

  void _paraOutraTelaHome(){
    Navigator.pushReplacementNamed(
      context, 
      '/home',
      arguments: {
                  'email': email.text,
                  }
      );
  }

  _login() async {
    var url = Uri.parse("http://localhost/Protect_trade/Login_proc(Usuario).php");
    
    final response = await http.post(url, body: {
      'Email':email.text,
      'Senha':senha.text,
      'Nome': nome.text
    });


    

    var data = json.decode(response.body);
    print(response.body);
    print(response.body);
    
    if(data.length == 0){
      setState((){
        msg="Falha no login";
      });
    }else{
      _paraOutraTelaHome();
    }

    return data;
  }


  

  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      backgroundColor: fundo,
      appBar: AppBar(
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        title: Text("Protect Trade",
                    style: TextStyle(
                      color:  name_Logo)),
      ),
        body: SingleChildScrollView(
          child: Form(
          key: _formu,
          child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Icon(
                Icons.account_circle_sharp,
                color: Colors.white,
                size: 200,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 450,
                child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Nome ou Email',
                    prefixIcon: Icon(Icons.account_circle_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                    ),
                  ),
                    validator: (email){
                      if (email == null || email.isEmpty){
                        return 'Está vazio';
                      }

                      
                    }
                ),
                
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 450,
                child: TextFormField(
                  controller: senha,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Senha',
                    prefixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                    ),
                  ),
                    
                ),
                
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 180,
                height: 50,
                child: RaisedButton(
                          onPressed: (){
                            

                            final isValid = _formu.currentState.validate();
                            
                            if(isValid){
                              _login();
                              _formu.currentState.save();
                              
                            }
                          },
                          child: Text('Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          )),
                          color: Colors.blue,
                          shape: 
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                              Radius.circular(35)
                            )),
                      ),
                      
              ),
              Text(msg,style: TextStyle(fontSize: 20.0,color: Colors.red),),
              
          ],)
        ),
        )
    ), );
  }
}