import 'package:flutter/material.dart';
import 'package:protect_trade/conta/usuario.dart';
import 'package:protect_trade/provider/usuario.dart';
import 'package:provider/provider.dart';

const fundo = Color.fromARGB(255, 78, 76, 76);
const name_Logo = Color.fromARGB(255, 67, 64, 64);

class TelaFormularioAdd extends StatelessWidget {

  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  @override
  Widget build(BuildContext context) {
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
        title: Text('Protect Trade',
            style: TextStyle(color: name_Logo),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person_add_alt_1,
                color: Colors.black,
                size: 40,),
                onPressed: (){
                  final isValid = _form.currentState.validate();

                  if(isValid){
                    _form.currentState.save();
                    Provider.of<Usuarios>(context, listen: false).put(Usuario(
                      id: _formData['id'],
                      nome: _formData['nome'],
                      senha: _formData['senha'],
                      email: _formData['email'],
                      telefone: _formData['telefone'],
                      logoUsuario: _formData['logoUsuario']
                    ));
                      Navigator.of(context).pushNamed('/AddFunc');
                    }
                }),
                SizedBox(width: 25,)
        ],
      ),
      body: SingleChildScrollView( 
        child: Form(
          key: _form,
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text('Insira um novo empregado',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white)
                ),
                SizedBox(
                  height: 85,
                ),
                Container(
                 width: 450,
                  child: TextFormField(
                      decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Nome',
                      prefixIcon: Icon(Icons.account_circle_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                      ),
                    ),
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'Digite um nome';
                        }
                        if (value.trim().length <= 5){
                          return 'Digite pelo menos seis caracteres';
                        }
                        return null;
                        },

                        onSaved: (value){
                          _formData['nome'] = value;
                        },
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
                      prefixIcon: Icon(Icons.lock_open_sharp),
                      border: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(35)),
                      ),
                    ),
                      onSaved: (value){
                        _formData['senha'] = value;
                      },
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
                      hintText: 'E-mail',
                      prefixIcon: Icon(Icons.email_sharp),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                      ),
                    ),
                      onSaved: (value){
                        _formData['email'] = value;
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
                      hintText: 'Telefone',
                      prefixIcon: Icon(Icons.call),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                      ),
                    ),
                      onSaved: (value){
                        _formData['telefone'] = value;
                      },
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
                    hintText: 'Avatar',
                    prefixIcon: Icon(Icons.add_photo_alternate_sharp),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                    ),
                  ),
                    onSaved: (value){
                      _formData['logoUsuario'] = value;
                    },
                ),
                
              ), 
            ],

          ),

        ),
      )
      ),
    );
  }
}