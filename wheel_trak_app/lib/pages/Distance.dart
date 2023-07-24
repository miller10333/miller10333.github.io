import 'package:flutter/material.dart';

class Distance extends StatefulWidget {
  const Distance({Key? key}) : super(key: key);

  @override
  State<Distance> createState() => _DistanceState();
}

class _DistanceState extends State<Distance> {
  double screenWidth = 0;
  double screenHeight = 0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Distance Report'),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: screenHeight/40,),

          Container(
            color: Colors.grey[300],
            padding: EdgeInsets.all(30),
            child: Text('Daily Distance: 3 Miles ', style: TextStyle(fontSize: 25),),
          ),
          SizedBox(height: screenHeight/60,),
          Container(
            color: Colors.grey[300],
            padding: EdgeInsets.all(30),
            child: Text('Weekly Distance: 10 miles', style: TextStyle(fontSize: 25),),
          ),
          SizedBox(height: screenHeight/60,),
          Container(
            color: Colors.grey[300],
            padding: EdgeInsets.all(30),
            child: Text('Monthly Distance: 40 miles', style: TextStyle(fontSize: 25),),
          ),

        ],
      ),
    );
  }
}