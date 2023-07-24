import 'package:flutter/material.dart';

class Maintenance extends StatefulWidget {
  const Maintenance({Key? key}) : super(key: key);

  @override
  State<Maintenance> createState() => _MaintenanceState();
}

class _MaintenanceState extends State<Maintenance> {
  double screenWidth = 0;

  double screenHeight = 0;
  TextEditingController consequenceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Maintenance'),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: screenHeight/40,),
            Container(
              height: screenHeight/3,
              width: screenWidth*14/15,
              padding: EdgeInsets.fromLTRB(screenWidth/15, 0, screenWidth/15, 0),
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(height: screenHeight/15,),
                  Icon(Icons.camera_alt_outlined, size: 100, color: Colors.grey[400],),
                  SizedBox(height: screenHeight/40,),
                  Container(
                    //padding: EdgeInsets.fromLTRB(100, 270, 100, 20),
                    child: Text("What's Broken?", style: TextStyle(fontSize: 25,color: Colors.grey),),
                  ),
                ],
              ),
            ),

            SizedBox(height: screenHeight/60,),
            Center(
              child: Container(
                height: screenHeight/3,
                width: screenWidth*14/15,
                color: Colors.grey[100],
                padding: EdgeInsets.fromLTRB(screenWidth/15, 0, screenWidth/15, 0),
                child: TextFormField(
                  controller: consequenceController,

                  style: TextStyle(fontSize:25),
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.edit),
                    labelText: "          Consequences?",
                    labelStyle: TextStyle(fontSize:25, color: Colors.black,),
                    hintText: "What happened after the wheel chair part broke?",
                    hintStyle: TextStyle(fontSize:25),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 5, color: Colors.black26,),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 5,color: Colors.black26,),
                    ),
                  ),

                ),
              ),
            ),

            SizedBox(height: screenHeight/30,),

              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Chair_Status');
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red[800], padding: EdgeInsets.fromLTRB(screenWidth/5, screenHeight/40, screenWidth/5, screenHeight/40),),
                  icon: Icon(Icons.email,),
                  label: Text('Report', style: TextStyle(fontSize: 25),),
                ),
              ),

          ],
        ),
      ),
    );
  }
}
