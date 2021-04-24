import 'package:flutter/material.dart';
import 'package:protect_trade/code/Cadastro.dart';

const fundo = Color.fromARGB(255, 78, 76, 76);
const name_Logo = Color.fromARGB(255, 67, 64, 64);
const B = Color.fromARGB(255, 37, 121, 217);

class HomePage extends StatelessWidget{
  

  @override
  Widget build(BuildContext context){

    Map data = ModalRoute.of(context).settings.arguments;
    String valores = data['name'];
    String email = data['email'];

    return Scaffold(
      backgroundColor: fundo,
      appBar: AppBar(
      automaticallyImplyLeading: true,
      leading: IconButton(
        color: Colors.black,
        icon: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      backgroundColor: Colors.white,
      title: Text('Protect Trade',
                  style: TextStyle(
                    color: name_Logo,
                  ) 
      )
    ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.account_circle_rounded,
                  size: 100.0),
                  SizedBox(
                    width: 20,
                  ),
                  Column(children: [
                    SizedBox(height: 20,),
                    // $valores
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Sr. $valores',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('$email',
                      style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey
                        ),
                    )
                      ],)
                    ),

                    
                  ],)
                ],
                )
            )
          ],
          ),
          SizedBox(
            height: 120,
          ),
          Row(
            
            children: [
              SizedBox(
                width: 50,
              ),
              Column(
                children: [
                  SizedBox(
                    
                    width: 120,
                    height: 120,
                    child: RaisedButton(
                          color: B,
                          onPressed: (){
                            print('Conseguiu');
                          },
                          child: Icon(
                            
                            Icons.add_circle,
                            size: 50.0,
                            color: Colors.white,)

                          )
              ),
              SizedBox(height: 10,),
              Text('Adicionar empregados',
              style: 
                TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ))
                ],
              ),

              SizedBox(
                width: 50,
              ),

              Column(
                children: [
                  SizedBox(
                width: 120,
                height: 120,
                child: RaisedButton(
                        color: B,
                        onPressed: (){
                          print('Conseguiu');
                        },
                        child: Icon(
                        Icons.camera_rear,
                        size: 50.0,
                        color: Colors.white)

                        )
              ),
              SizedBox(height: 10,),
              Text('Câmera do estabelecimento',
              style: 
                TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ))
                ],
              ),

              SizedBox(
                width: 50,
              ),

              Column(
                children: [
                  SizedBox(
                width: 120,
                height: 120,
                child: RaisedButton(
                        color: B,
                        onPressed: (){
                          print('Conseguiu');
                        },
                        child: Icon(
                        Icons.attach_money,
                        size: 50.0,
                        color: Colors.white)

                        )
              ),
              SizedBox(height: 10,),
              Text('Tela de pagamento',
              style: 
                TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ))
                ],
              ),

              
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
            SizedBox(
                width: 65,
              ),
              Column(
                children: [
                  SizedBox(
                    
                    width: 120,
                    height: 120,
                    child: RaisedButton(
                          color: B,
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            
                            Icons.logout,
                            size: 50.0,
                            color: Colors.white,)

                          )
              ),
              SizedBox(height: 10,),
              Text('Sair',
              style: 
                TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ))
                ],
              ),
            ]
          ),
        ],
      ),
    );
  }
}