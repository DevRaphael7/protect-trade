import 'package:flutter/material.dart';
import 'package:protect_trade/code/Cadastro.dart';
import 'package:protect_trade/code/Home_page.dart';
import 'package:protect_trade/code/primary_page.dart';
import 'package:provider/provider.dart';
import 'package:protect_trade/provider/usuario.dart';
import 'package:protect_trade/code/login.dart';
import 'package:protect_trade/code/add_func.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create: (ctx) => Usuarios(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicativo em Flutter',
      initialRoute: '/',
      routes: {
        '/': (context) => PrimaryPage(),
        '/cadastro': (context) => Cadastro(),
        '/home': (context) => HomePage(),
        '/Login': (context) => Login(),
        '/AddFunc': (context) => AddFunc(),
      }
    ),
    );
  }
}