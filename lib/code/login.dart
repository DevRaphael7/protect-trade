import 'package:flutter/material.dart';

const name_Logo = Color.fromARGB(255, 67, 64, 64);
const fundo = Color.fromARGB(255, 78, 76, 76);

class Login extends StatelessWidget{

  @override
  Widget build(BuildContext context){
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
    );
  }
}