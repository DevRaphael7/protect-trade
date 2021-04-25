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
  
}