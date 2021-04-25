import 'package:flutter/material.dart';
import 'package:protect_trade/conta/usuario.dart';
import 'dart:math';
import 'package:protect_trade/dados/algunsUsuarios.dart';

class Usuarios with ChangeNotifier{
  Map<String, Usuario> _items = {...AlgunsUsuarios};

  List<Usuario> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Usuario byIndex(int i){
    return _items.values.elementAt(i);
  }

  void put(Usuario user){
    if(user == null){
      return;
    }

    if(user.id != null && 
     user.id.trim().isNotEmpty && 
    _items.containsKey(user.id)){
      _items.update(user.id, (_) => Usuario(
        id: user.id,
        nome: user.nome,
        senha: user.senha,
        email: user.email,
        logoUsuario: user.logoUsuario
        ));
    } else{

      final id = Random().nextDouble().toString();
    
    _items.putIfAbsent('1000', () => Usuario(
      id : id,
      nome: user.nome,
      email: user.email,
      senha: user.senha,
      logoUsuario: user.logoUsuario,

    ));
    } 
    
    
    //Adicionar
    //ou alterar
    
    notifyListeners();
  }

  void remove(Usuario user){
    if(user != null && user.id != null){
      _items.remove(user.id);
      notifyListeners();
    }
  }
  
} 