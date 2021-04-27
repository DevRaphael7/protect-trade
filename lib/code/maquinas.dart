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
    // _controller = VideoPlayerController.network('https://youtu.be/pTJJsmejUOQ?t=9');
    _controller = VideoPlayerController.asset('videos/teste3.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(0);
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
      backgroundColor: Color(0xFF787474),
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
            Navigator.of(context).pop('/home');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Card(
            color: Color(0xFF9D9494),
                child: Row(
                  children: [
                    SizedBox(
                      width: 180,
                      child:FutureBuilder(
                        future: _initializeVideoPlayerFuture,
                        builder: (context, snapshot){
                        if(snapshot.connectionState == ConnectionState.done){
                          return AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                          );
                        }else{
                          return Center(
                          child: CircularProgressIndicator(),
                            );
                        }
                      }
                    ), 
                    ),
                    SizedBox(width: 10),

                    Text(
                      'Máquina 1',
                      style: TextStyle(
                        fontSize: 25),
                    ),

                    Icon(
                      Icons.desktop_windows_sharp,
                      size: 28.1,),
                    SizedBox(width: 180,),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.download_sharp)
                    ),
                    SizedBox(width: 20,),
                    FloatingActionButton(
                      child: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow_sharp,),
                      onPressed: (){
                        setState(() {
                      if(_controller.value.isPlaying){
                        _controller.pause();
                      }else{
                        _controller.play();
                      }
                      });
                    }),
                  ]
                ),
          )
        )
      ),
      
    );
  }
}
