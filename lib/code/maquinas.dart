import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

const name_Logo = Color.fromARGB(255, 67, 64, 64);

class Maquinas extends StatefulWidget {


  @override
  _State createState() => _State();
}

class _State extends State<Maquinas>{

  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState(){
    _controller = VideoPlayerController.network('https://www.youtube.com/watch?v=2alg7MQ6_sI');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
