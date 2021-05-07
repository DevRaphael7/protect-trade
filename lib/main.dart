import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:protect_trade/code/Cadastro.dart';
import 'package:protect_trade/code/Home_page.dart';
import 'package:protect_trade/code/maquinas.dart';
import 'package:protect_trade/code/primary_page.dart';
import 'package:provider/provider.dart';
import 'package:protect_trade/provider/usuario.dart';
import 'package:protect_trade/code/login.dart';
import 'package:protect_trade/code/add_func.dart';
import 'package:protect_trade/code/telaFormularioEmpregado.dart';

void main() {
  runApp(MyApp());
}

const fundo = Color.fromARGB(255, 78, 76, 76);

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create: (ctx) => Usuarios(),
      child: MaterialApp( 
      color: fundo,
      debugShowCheckedModeBanner: false,
      title: 'Aplicativo em Flutter',
      initialRoute: '/',
      routes: {
        '/': (context) => PrimaryPage(),
        '/cadastro': (context) => Cadastro(),
        '/home': (context) => HomePage(),
        '/Login': (context) => Login(),
        '/AddFunc': (context) => AddFunc(),
        '/formEmp': (context) => TelaFormularioAdd(),
        '/maquinas': (context) => Maquinas(),
      } 
    ),
    );
  }
}