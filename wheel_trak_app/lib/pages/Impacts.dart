import 'package:flutter/material.dart';

class Impacts extends StatefulWidget {
  const Impacts({Key? key}) : super(key: key);

  @override
  State<Impacts> createState() => _ImpactsState();
}

class _ImpactsState extends State<Impacts> {
  double screenWidth = 0;
  double screenHeight = 0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Shocks Report'),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: screenHeight/40,),

          Container(
            color: Colors.grey[100],
            padding: EdgeInsets.all(30),
            child: Text('Daily Shocks: 4 ', style: TextStyle(fontSize: 25),),
          ),
          SizedBox(height: screenHeight/60,),
          Container(
            color: Colors.grey[100],
            padding: EdgeInsets.all(30),
            child: Text('Weekly Shocks: 20 ', style: TextStyle(fontSize: 25),),
          ),
          SizedBox(height: screenHeight/60,),
          Container(
            color: Colors.grey[100],
            padding: EdgeInsets.all(30),
            child: Text('Monthly Shocks: 53 ', style: TextStyle(fontSize: 25),),
          ),

        ],
      ),
    );
  }
}