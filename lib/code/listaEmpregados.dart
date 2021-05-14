import 'package:flutter/material.dart';
import 'package:protect_trade/provider/usuario.dart';
import 'package:protect_trade/conta/usuario.dart';




const B = Color.fromARGB(255, 37, 121, 217);

class UserTile extends StatelessWidget {

  final Usuario usuarios;

  const UserTile(this.usuarios);

  @override
  Widget build(BuildContext context) {
    final avatar = usuarios.logoUsuario == null || usuarios.logoUsuario.isEmpty
      ? CircleAvatar(child: Icon(Icons.person, size: 25, color: Colors.white,), backgroundColor: B,)
      : CircleAvatar(backgroundImage: NetworkImage(usuarios.logoUsuario),);

    return Card(
      color: Color(0xFF787474),
      child: SizedBox( 
        height: 65,
        child: Center(
          child: ListTile(
          leading: avatar,
          title: Text(usuarios.nome,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20)),
        subtitle: Text(usuarios.email,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13
                    )),
        trailing: Container(
          width: 100,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 40,
              ),
              IconButton(
                icon: Icon(Icons.delete),
               color: B,
                onPressed: (){},
              ),
          ],)
      ),
    ),
        ),
      ),
    );
  }
}