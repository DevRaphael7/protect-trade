import 'package:flutter/material.dart';

const fundo = Color.fromARGB(255, 78, 76, 76);
const name_Logo = Color.fromARGB(255, 67, 64, 64);
int buttonColorHover = 0xFF2579D9;

class PrimaryPage extends StatefulWidget{

  @override
  _PrimaryPage createState() => _PrimaryPage();
}

class _PrimaryPage extends State<PrimaryPage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: fundo,
      appBar: AppBar(
        title: Text("Protect Trade", 
        style: TextStyle(color: name_Logo),),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
         SizedBox(
            height: 250,
          ),
          Center(
            
            child: Container(
              child: Text('Welcome!', 
              style: 
              TextStyle(
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(1.0, 3.5),
                  )
                ],
                fontSize: 35, 
                color: Colors.white
              ),
              ),
              ),
          ),

          SizedBox(
            height: 100,
          ),
          SizedBox(
            width: 180,
            height: 55,
            child: RaisedButton(
            
            color: Color(buttonColorHover),
            onPressed: (){
              
              Navigator.of(context).pushNamed('/cadastro');
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(35))),
            child: Text('Cadastrar', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),)

            ),
          ),
          
        ],
      ),
    );
  }
}