import 'package:flutter/material.dart';

class Chair_Status extends StatefulWidget {
  const Chair_Status({Key? key}) : super(key: key);

  @override
  State<Chair_Status> createState() => _Chair_StatusState();
}

class _Chair_StatusState extends State<Chair_Status> {
  double screenWidth = 0;

  double screenHeight = 0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Chair Status'),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: screenHeight/40,),
          Center(
            child: Container(
                height: screenHeight/20,
                width: screenWidth*14/15,
                color: Colors.grey[300],
                padding: EdgeInsets.fromLTRB(screenWidth/15, screenHeight/60, screenWidth/15, 0),
                child: Text('Status',style: TextStyle(fontSize:25, color: Colors.black,), textAlign: TextAlign.center,)
            ),
          ),
          SizedBox(height: screenHeight/40,),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Tire_Video');
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[100], foregroundColor: Colors.red, elevation: 0,padding: EdgeInsets.all(30),),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Tire Status      ',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.normal ),),
                SizedBox(width: screenHeight/7,),
                Icon(Icons.warning_rounded, size: 40, color: Colors.red,),
              ],
            ),
          ),

          SizedBox(height: screenHeight/60,),
          ElevatedButton(
            onPressed: () {
              //Navigator.pushNamed(context, '/Distance');
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[100], foregroundColor: Colors.red, elevation: 0,padding: EdgeInsets.all(30),),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Brake Status   ',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.normal ),),
                SizedBox(width: screenHeight/7,),
                Icon(Icons.check, size: 40, color: Colors.green,),
              ],
            ),
          ),
          SizedBox(height: screenHeight/60,),
          ElevatedButton(
            onPressed: () {
              //Navigator.pushNamed(context, '/Distance');
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[100], foregroundColor: Colors.red, elevation: 0,padding: EdgeInsets.all(30),),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Caster Status  ',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.normal ),),
                SizedBox(width: screenHeight/7,),
                Icon(Icons.check, size: 40, color: Colors.green,),
              ],
            ),
          ),

          SizedBox(height: screenHeight/60,),
          Center(
            child: Container(
                height: screenHeight/20,
                width: screenWidth*14/15,
                color: Colors.grey[300],
                padding: EdgeInsets.fromLTRB(screenWidth/15, screenHeight/60, screenWidth/15, 0),
                child: Text('Activity',style: TextStyle(fontSize:25, color: Colors.black,), textAlign: TextAlign.center,)
            ),
          ),
          SizedBox(height: screenHeight/40,),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Cleaning_Video');
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[100], foregroundColor: Colors.red, elevation: 0,padding: EdgeInsets.all(30),),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Chair Cleaning  ',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.normal ),),
                SizedBox(width: screenHeight/8,),
                Icon(Icons.chevron_right, size: 40, color: Colors.red,),
              ],
            ),
          ),
          /*SizedBox(height: screenHeight/60,),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Maintenance');
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[100], foregroundColor: Colors.red, elevation: 0,padding: EdgeInsets.all(30),),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Report Failure   ',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.normal ),),
                SizedBox(width: screenHeight/8,),
                Icon(Icons.chevron_right, size: 40, color: Colors.red,),
              ],
            ),
          ),*/

          SizedBox(height: screenHeight/30,),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/Maintenance');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red[800], padding: EdgeInsets.fromLTRB(screenWidth/5, screenHeight/40, screenWidth/5, screenHeight/40),),
              icon: Icon(Icons.handyman_outlined,),
              label: Text('Report Failure', style: TextStyle(fontSize: 25),),
            ),
          ),
        ],
      ),
    );
  }
}
