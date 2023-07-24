import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Tire_Video extends StatefulWidget {
  const Tire_Video({Key? key}) : super(key: key);

  @override
  State<Tire_Video> createState() => _Tire_VideoState();
}

class _Tire_VideoState extends State<Tire_Video> {
  late VideoPlayerController controller;
  double screenWidth = 0;

  double screenHeight = 0;
  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer(){
    controller = VideoPlayerController.asset('assets/Tire.mp4');
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value){
      setState(() {});
    });

  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
      appBar: AppBar(
        title: Text("Tire Health"),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Container(
          child: Column(
              children:[
                SizedBox(height:screenHeight/10,),//4 ,),

                Container(
                  child: AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                      child: VideoPlayer(controller),
                  ),
                  width: screenWidth/1.1,
                  height: screenHeight/1.5,
                ),

                Container( //duration of video
                  child: Text("Total Duration: " + controller.value.duration.toString()),
                ),

                Container(
                    child: VideoProgressIndicator(
                        controller,
                        allowScrubbing: true,
                        colors:VideoProgressColors(
                          backgroundColor: Colors.grey,
                          playedColor: Colors.red,
                          bufferedColor: Colors.black26,
                        )
                    )
                ),

                Container(
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: (){
                            if(controller.value.isPlaying){
                              controller.pause();
                            }else{
                              controller.play();
                            }

                            setState(() {

                            });
                          },
                          icon:Icon(controller.value.isPlaying?Icons.pause:Icons.play_arrow)
                      ),

                      /*IconButton(
                          onPressed: (){
                            controller.seekTo(Duration(seconds: 0));

                            setState(() {

                            });
                          },
                          icon:Icon(Icons.stop)
                      )*/
                    ],
                  ),
                )
              ]
          )
      ),
    );
  }
}
