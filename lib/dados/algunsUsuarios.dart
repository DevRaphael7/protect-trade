import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:protect_trade/conta/usuario.dart';

int id = 0;



const AlgunsUsuarios = {

  '1': const Usuario(
        id: '1',
        nome: 'Maria',
        senha: '3445',
        email: 'maria@email.com.br',
        logoUsuario: '',
  ),
  '2' : const Usuario(
    id: '2',
    nome: 'Itachi', 
    senha: '456217',
    email: 'Itachi@email.com', 
    logoUsuario: 'https://th.bing.com/th/id/OIP.b9fQImjAEAGKaYl4zT8FyAHaEn?w=303&h=187&c=7&o=5&pid=1.7',
    ),
    '3': const Usuario(
      id: '3',
      nome: 'Naruto Uzumaki',
      senha: 'HinataBorutoFamilia',
      email: 'Narutin@email.com',
      logoUsuario: 'https://th.bing.com/th/id/OIP.9i84sNBG9oIH7hkUM2C_WgHaEK?w=292&h=180&c=7&o=5&pid=1.7',
    ),



};

// _getData() async{

// var resposta = await http.post(url, body: {

//   const Usuario(
//     nome: 'id',
//     senha: 'senha', 
//     email: email, 
//     logoUsuario: 
//     logoUsuario)

//     // 'id': id,
//     // 'Nome': nome,
//     // 'Email': email,
//     // 'Senha': senha,
//     // 'Telefone': telefone_c,

//   });

//   var dadosUsuario = json.encode(resposta.body);
//   print(dadosUsuario);
//   return dadosUsuario;
// }