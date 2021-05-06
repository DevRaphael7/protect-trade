import 'package:flutter/material.dart';
import 'package:protect_trade/code/Cadastro.dart';

const fundo = Color.fromARGB(255, 78, 76, 76);
const name_Logo = 0xFFC1C1C1;
const B = Color.fromARGB(255, 37, 121, 217);

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    Map data = ModalRoute.of(context).settings.arguments;
    String valores = data['name'];
    String email = data['email'];
    String url = data['url'];
    

    if(url == null || url.isEmpty){
      url = 'https://th.bing.com/th/id/Rfd5a137d4cc43657449836c511c422e1?rik=xs4NJnZD7SrL9w&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_24787.png&ehk=XT7ycIEO1QBstZHkYYA%2fmHm7bSjaBM1nSo61Bl%2bnJSs%3d&risl=&pid=ImgRaw';
    }
    

    return Scaffold(
      
      backgroundColor: fundo,
      appBar: AppBar(
      automaticallyImplyLeading: true,
      backgroundColor: Color(0xFF333333),
      title: Text('Protect Trade',
                  style: TextStyle(
                    color: Color(name_Logo),
                  ) 
      )
    ),
    drawer: Drawer(
        child: Container(
          color: fundo,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              arrowColor: B,
              accountName: Text('$valores'),
              accountEmail: Text('$email'),
              currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(url),
                    radius: 25.5,
                  ),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_sharp, color: Color(name_Logo)),
              title: Text('Voltar', style: TextStyle(color: Color(name_Logo))),
              onTap: (){
                Navigator.pop(context);
              },
            
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.build_circle_sharp, color: Color(name_Logo)),
              title: Text('Configurações', style: TextStyle(color: Color(name_Logo))),
              onTap: (){
                Navigator.pop(context);
              },
            
            ),
        ],),),
      ),
      body: SingleChildScrollView( 
        child: Column(
        
        children: <Widget>[
          Row(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(url),
                    radius: 25.0,
                  ),
                  // Icon(Icons.account_circle_rounded,
                  // size: 100.0),
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
                          fontSize: 12.5,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('$email',
                      style: TextStyle(
                      fontSize: 10,
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
            height: 45,
          ),
          Row( // ===================================================
            
            children: [
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  SizedBox(
                    
                    width: 80,
                    height: 80,
                    child: RaisedButton(
                          color: B,
                          onPressed: (){
                            Navigator.of(context).pushNamed('/AddFunc');
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
                  fontSize: 10,
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
                width: 80,
                height: 80,
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
                  fontSize: 10,
                  color: Colors.white,
                ))
                ],
              ),

              

              
            ],
          ), 
          SizedBox(
            height: 10,
          ),
          Row( // ======================================================= * 7 *
            children: [
            SizedBox(
                width: 28,
              ), 
              Column(
                children: [
                  SizedBox(
                    width: 80, 
                    height: 80, 
                    child: RaisedButton(
                      color: B,
                      onPressed: (){Navigator.of(context).pushNamed('/maquinas');}, 
                      child: Icon(
                        Icons.desktop_windows_sharp, 
                        size: 50.0, 
                        color: Colors.white),
                        )
                        ),
                        SizedBox(height: 10,),
                        Text('Máquinas',
                          style: 
                            TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ))
                ]
              ),
              SizedBox(
                width: 85,
              ),
              Column(
                children: [
                  SizedBox(
                    
                    width: 80,
                    height: 80,
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
          SizedBox(
            height: 10,
          ),
          
          Row(
            children: [
              SizedBox(
                width: 28,
              ), 
              Column(
                children: [
                  
                  SizedBox(
                width: 80,
                height: 80,
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
                  fontSize: 10,
                  color: Colors.white,
                ))
                ],
              ),
            ]
          ), 
        ],
      ),
      ),
    );
  }
}