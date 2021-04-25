import 'package:flutter/material.dart';
import 'package:protect_trade/main.dart';

const fundo = Color.fromARGB(255, 78, 76, 76);
const B = Color.fromARGB(255, 37, 121, 217);
const name_Logo = Color.fromARGB(255, 67, 64, 64);

class Cadastro extends StatelessWidget{

  final _form = GlobalKey<FormState>();
  final myController = TextEditingController();
  final emailConntroller = TextEditingController();
  final urlController = TextEditingController();
  static String nome;
  static String senha;

  @override
  Widget build(BuildContext context){

  void _paraOutraTelaHome(){
    Navigator.pushReplacementNamed(
      context, 
      '/home',
      arguments: {'name': myController.value.text,
                  'email': emailConntroller.value.text,
                  'url': urlController.value.text,
                  }
      );
  }

  void _paraOutraTelaLogin(){
    Navigator.pushReplacementNamed(
      context, 
      '/Login',
      arguments: {'name': myController.value.text,
                  'email': emailConntroller.value.text}
      );
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
                      controller: myController,
                      validator: (myController){
                      
                      if (myController.isEmpty || myController == null){
                        return 'Não pode ser vazio';
                      }
                      if (myController.trim().length < 3){
                        return 'Digite ao menos três caracteres';
                      }
                      
                      nome = myController;
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
                    validator: (value){
                      if(value.trim().length <= 5){
                        return 'Insira pelo menos 6 números';
                      }
                      if(value.isEmpty || value == null){
                        return 'Escreva alguma coisa';
                      }
                      senha = value;
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
                      if(value != senha){
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
                onSaved: (value){

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
                      _paraOutraTelaLogin();
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