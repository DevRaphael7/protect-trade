import 'package:flutter/material.dart';

const name_Logo = Color.fromARGB(255, 67, 64, 64);

class Maquinas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Protect Trade',
                    style: TextStyle(
                    color: name_Logo, 
                    ),
                  ),
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width - 20,
              child: Card(
                color: Color(0xFF787474),
                child: Text('Olá',
                  style: TextStyle(
                    fontSize: 60,
                    ), 
                    textAlign: TextAlign.center,
                    ),
                )
              ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 20,
              child: Card(
                color: Color(0xFF787474),
                child: SizedBox(),)
            ),
            ],
          )
        )
      ),
    );
  }
}