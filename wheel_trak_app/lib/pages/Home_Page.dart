import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  double screenWidth = 0;

  double screenHeight = 0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height; //take size of connected device
    screenWidth = MediaQuery.of(context).size.width;
    Map user_data = ModalRoute.of(context)!.settings.arguments as Map;
    String username = user_data['username'];
    String manufacturer = user_data['manufacturer'];
    String model = user_data['model'];
    String frequency = user_data['frequency'];


    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('WheelTrak'),
        leading: null,
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: screenHeight/40,),

          Center(
            child: Container(
              color: Colors.grey[300],
              padding: EdgeInsets.all(screenHeight/15), //screenWidth/13),
              child: Text('Greetings, $username', style: TextStyle(fontSize: 25),),
            ),
          ),

          SizedBox(height: screenHeight/60,),

          ElevatedButton(
          onPressed: () {
          Navigator.pushNamed(context, '/Distance');
          },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[100], foregroundColor: Colors.red, elevation: 0,padding: EdgeInsets.all(screenHeight/15),),//screenWidth/13),),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Distance: 3 miles',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.normal ),),
                SizedBox(width: screenWidth/5,),
                Icon(Icons.chevron_right, size: 40,),
              ],
          ),
          ),

          SizedBox(height: screenHeight/60,),

          Container(
            color: Colors.grey[100],
            padding: EdgeInsets.all(screenHeight/15), //screenWidth/13),
            child: Text('Speed: 1 mph',style: TextStyle(fontSize: 25),),
          ),

          SizedBox(height: screenHeight/60,), // margin between buttons (reveals background)


          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Chair_Status');
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[100], foregroundColor: Colors.red, elevation: 0,padding: EdgeInsets.all(screenHeight/15),),//screenWidth/13),),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Chair Status',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.normal ),),
                SizedBox(width: screenWidth/35,), //creates space between word and icon
                Icon(Icons.warning_rounded, size: 40,),
                SizedBox(width: screenWidth/5,),
                Icon(Icons.chevron_right,size: 40,)
              ],
            ),
          ),

        ],
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: () { Navigator.pushNamed(context, '/Setting_Page',arguments: user_data); },
        child: Icon(Icons.settings, size: 45,),
        backgroundColor: Colors.red[900],
      ),
    );
  }
}