import 'package:flutter/material.dart';

class Usuario {

  final String id;
  final String nome;
  final String senha;
  final String email;
  final String telefone;
  final String logoUsuario;

  const Usuario({
    this.id,
    @required this.nome,
    @required this.senha,
    @required this.email,
    this.telefone,
    @required this.logoUsuario,
    
  });

  // factory Usuario.fromJson(Map<String, dynamic> json){
  //   return Usuario(
  //     id: json['id'] as int,
  //     firstName: json['first_name'] as String,
  //     lastName: json['last_name'] as String,
  //   );
  // }
  
}