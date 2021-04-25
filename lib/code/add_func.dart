import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:protect_trade/provider/usuario.dart';
import 'package:protect_trade/conta/usuario.dart';
import 'package:protect_trade/code/listaEmpregados.dart';

const B = Color.fromARGB(255, 37, 121, 217);
const fundo = Color.fromARGB(255, 78, 76, 76);
const name_Logo = Color.fromARGB(255, 67, 64, 64);

class AddFunc extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final Usuarios usuarios = Provider.of(context);

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
        title: Text('Lista de usuários',
                style: TextStyle(
                  color: name_Logo,
                )),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add, color: Colors.black),
            onPressed: (){
              
            },
          ), 
        ],
      ),
        body:  ListView.builder(
          itemCount: usuarios.count,
          itemBuilder: (ctx, i) => UserTile(usuarios.byIndex(i)),
          ),
    );
  }
} 