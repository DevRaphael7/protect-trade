import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:protect_trade/main.dart';




const fundo = Color.fromARGB(255, 78, 76, 76);
const B = Color.fromARGB(255, 37, 121, 217);
const name_Logo = Color.fromARGB(255, 67, 64, 64);

class Cadastro extends StatelessWidget{

  final _form = GlobalKey<FormState>();
  TextEditingController nome = new TextEditingController();
  TextEditingController emailConntroller = new TextEditingController();
  TextEditingController senha = new TextEditingController();
  TextEditingController telefone_c = new TextEditingController();
  TextEditingController urlController = new TextEditingController();

  

  

  @override
  Widget build(BuildContext context){

  void _paraOutraTelaHome(){
    Navigator.pushReplacementNamed(
      context, 
      '/home',
      arguments: {'name': nome.value.text,
                  'email': emailConntroller.value.text,
                  'url': urlController.value.text,
                  }
      );
  }

  _add() async {
    var url = Uri.parse("http://localhost/php/Adicionar_proc(USUARIO).php");
    var resposta = await http.post(url, body: {

    'Nome': nome.text,
    'Email': emailConntroller.text,
    'Senha': senha.text,
    'Telefone': telefone_c.text,

  });

    
    var datauser = json.decode(resposta.body);

    
    return datauser;
  }
  return Scaffold(
    backgroundColor: fundo,
    appBar: AppBar(
      automaticallyImplyLeading: true,
      leading: IconButton(
        color: Colors.black,
        icon: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      backgroundColor: Colors.white,
      title: Text('Protect Trade',
                  style: TextStyle(
                    color: name_Logo,
                  ) 
      )
    ),
    body: SingleChildScrollView(
      child: Form(
              key: _form,
//          width: MediaQuery.of(context).size.width,
//          height: MediaQuery.of(context).size.height,
          /*decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/images/LOGO - Para o protótipo.png'),
                fit: BoxFit.cover,
              )
            ),*/
            child: Container(
              width: MediaQuery.of(context).size.width,
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                  ),

                  Icon(
                    Icons.account_circle_sharp,
                    size: 200,
                    color: Colors.white,
                  ),

                  Container(
                    color: null,
                    width: 450,
                    child: TextFormField(
                      controller: nome,
                      validator: (nome){
                      
                      if (nome.isEmpty || nome == null){
                        return 'Não pode ser vazio';
                      }
                      if (nome.trim().length < 3){
                        return 'Digite ao menos três caracteres';
                      }
                      
                      return null;
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Nome',
                    prefixIcon: Icon(Icons.account_circle),
                    border: OutlineInputBorder(
                      borderRadius: 
                      BorderRadius.all(
                        Radius.circular(25))
                  ),

                ),
                ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  color: null,
                  width: 450,
                  child: TextFormField(
                    controller: senha,
                    validator: (senha){
                      if(senha.trim().length <= 5){
                        return 'Insira pelo menos 6 números';
                      }
                      if(senha.isEmpty || senha == null){
                        return 'Escreva alguma coisa';
                      }
                    },

                    onSaved: (value){
                      print(value);
                    },
                    obscureText: false,
                    decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Senha',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: 
                      BorderRadius.all(
                        Radius.circular(25))
                  ),

                ),
                ),
                ),

                SizedBox(
                  height: 12,
                ),

                Container(
                  color: null,
                  width: 450,
                  child: TextFormField(
                    validator: (value){
                      if(value == "" || value == null){
                        return "O campo não pode ser vazio!";
                      }
                      if(value != senha.text){
                        return 'A senha é diferente';
                      }else{
                        print('São iguais');
                      }
                    },

                    onSaved: (value){
                      print(value);
                    },
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Confirmar Senha',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: 
                      BorderRadius.all(
                        Radius.circular(25))
                  ),

                ),
                ),
                ),

                SizedBox(
                  height: 12,
                ),

                Container(
                  color: null,
                  width: 450,
                  child: TextFormField(
                    controller: emailConntroller,
                    validator: (emailConntroller){
                      if(emailConntroller.isEmpty || emailConntroller == null){
                        return 'Escreva alguma coisa';
                      }
                    },
                    onSaved: (emailConntroller){
                      
                    },
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'E-mail:',
                    prefixIcon: Icon(Icons.alternate_email),
                    border: OutlineInputBorder(
                      borderRadius: 
                      BorderRadius.all(
                        Radius.circular(25))
                  ),

                ),
                ),
                ),

                SizedBox(
                  height: 12,
                ),

                Container(
                  color: null,
                  width: 450,
                  child: TextFormField(
                    controller: telefone_c,
                    onSaved: (telefone_c){

                    },
                    keyboardType: TextInputType.phone,
                    obscureText: false,
                    decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Telefone:',
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderRadius: 
                      BorderRadius.all(
                        Radius.circular(25))
                  ),

                ),
                ),
                ),

                
                SizedBox(
                  height: 12,
                ),

                Container(
                  color: null,
                  width: 450,
                  child: TextFormField(
                    controller: urlController,
                    keyboardType: TextInputType.url,
                    obscureText: false,
                    decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'URL do Avatar',
                    prefixIcon: Icon(Icons.add_photo_alternate_rounded),
                    border: OutlineInputBorder(
                      borderRadius: 
                      BorderRadius.all(
                        Radius.circular(25))
                  ),
                    

                ),
                onSaved: (ur){

                }
                ),
                ),

                SizedBox(
                  height: 25,
                  ),
                SizedBox(
                  width: 180,
                  height: 50,
                  child: RaisedButton(
                          child: 
                          Text('Confirmar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          )),
                          color: B,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(35)
                              )),
                          onPressed: (){
                            
                            final isValid = _form.currentState.validate();
                            
                            if(isValid){
                              _form.currentState.save();
                              _add();
                              _paraOutraTelaHome();
                              
                            }
                          }
                          
                        ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).pushNamed('/Login');
                    }, 
                    child: Text('Login', 
                                style: 
                                TextStyle(
                                  color: Colors.white,
                                ))
                  ),
              ],
            ),
            ),
          ),
    ),
  );
  }
}