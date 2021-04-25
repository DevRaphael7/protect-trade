import 'package:flutter/material.dart';
import 'package:protect_trade/code/Cadastro.dart';
import 'package:protect_trade/conta/usuario.dart';

const name_Logo = Color.fromARGB(255, 67, 64, 64);
const fundo = Color.fromARGB(255, 78, 76, 76);
const B = Color.fromARGB(255, 37, 121, 217);

class Login extends StatelessWidget{

  final _formu = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    
    Map data = ModalRoute.of(context).settings.arguments;
    String valores = data['name'];
    String email = data['email'];

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
        body: Form(
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
                    decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Nome ou Email',
                    prefixIcon: Icon(Icons.account_circle_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                    ),
                  ),
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return 'Está vazio';
                      }

                      if(value != valores){
                        return 'Este usuário não existe';
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
                      )
              ),
              
          ],)
        ),
        )
    );
  }
}