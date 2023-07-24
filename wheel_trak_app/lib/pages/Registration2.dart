import 'package:flutter/material.dart';
class Registration2 extends StatefulWidget {
  const Registration2({Key? key}) : super(key: key);

  @override
  State<Registration2> createState() => _Registration2State();
}

class _Registration2State extends State<Registration2> {
  double screenWidth = 0;
  double screenHeight = 0;
  //String dropDownValue = "Every 1 Week";
  final manufacturerController = TextEditingController();
  final modelController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    Map user_data = ModalRoute.of(context)!.settings.arguments as Map;
    String username = user_data['username'];

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Welcome!'),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: screenHeight/5,),
            Center(
              child: Container(
                height: screenHeight/11,
                width: screenWidth*14/15,
                color: Colors.grey[300],
                padding: EdgeInsets.fromLTRB(0, screenHeight/30, 0, 0),
                child: Text('Your Wheelchair Info',style: TextStyle(fontSize:25, color: Colors.black,), textAlign: TextAlign.center,)
              ),
            ),
            SizedBox(height: screenHeight/60,),

            Container(
              height: screenHeight/11,
              width: screenWidth*14/15,
              color: Colors.grey[100],
              padding: EdgeInsets.fromLTRB(screenWidth/15, 0, screenWidth/15, 0),
              child: TextFormField(
                controller: manufacturerController,
                //onChanged: (v) => manufacturerController.text = v,
                style: TextStyle(fontSize:25),
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.edit),
                  labelText: "Chair Manufacturer",
                  labelStyle: TextStyle(fontSize:25,color: Colors.black,),
                  hintText: "i.e. Sunrise",
                  hintStyle: TextStyle(fontSize:25),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 5, color: Colors.white38,),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 5,color: Colors.black26,),
                  ),
                ),
              ),
            ),

            SizedBox(height: screenHeight/60,),

            Container(
              height: screenHeight/11,
              width: screenWidth*14/15,
              color: Colors.grey[100],
              padding: EdgeInsets.fromLTRB(screenWidth/15, 0, screenWidth/15, 0),
              child: TextFormField(
                controller: modelController,
                //onChanged: (v) => modelController.text = v,
                style: TextStyle(fontSize:25),
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.edit),
                  labelText: "Chair Model",
                  labelStyle: TextStyle(fontSize:25,color: Colors.black,),
                  hintText: "i.e. Quickie",
                  hintStyle: TextStyle(fontSize:25),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 5, color: Colors.white38,),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 5,color: Colors.black26,),
                  ),
                ),
              ),
            ),

            SizedBox(height: screenHeight/30,),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Map user_info = {'username': username,'manufacturer': manufacturerController.text,'model': modelController.text,'frequency': ''};
                  Navigator.pushReplacementNamed(context, '/Home_Page', arguments: user_info);
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red[800], padding: EdgeInsets.fromLTRB(screenWidth/3, screenHeight/40, screenWidth/3, screenHeight/40),),
                icon: Icon(Icons.save_rounded,),
                label: Text('Save', style: TextStyle(fontSize: 25),),
              ),
            )
          ],
        ),
      ),
    );
  }
}