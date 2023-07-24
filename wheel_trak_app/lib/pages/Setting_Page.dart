import 'package:flutter/material.dart';

class Setting_Page extends StatefulWidget {
  const Setting_Page({Key? key}) : super(key: key);

  @override
  State<Setting_Page> createState() => _Setting_PageState();
}

class _Setting_PageState extends State<Setting_Page> {
  double screenWidth = 0;
  double screenHeight = 0;
  String dropDownValue = "Every 1 Week";
  late TextEditingController usernameController = TextEditingController();
  late TextEditingController manufacturerController = TextEditingController();
  late TextEditingController modelController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    Map user_data = ModalRoute.of(context)!.settings.arguments as Map;
    String username = user_data['username'];
    String manufacturer = user_data['manufacturer'];
    String model = user_data['model'];
    //dropDownValue = user_data['frequency'];
    usernameController = TextEditingController(text: username);
    manufacturerController = TextEditingController(text: manufacturer);
    modelController = TextEditingController(text: model);

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Setting'),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: screenHeight/40,),

            Container(
              height: screenHeight/11,
              width: screenWidth,
              color: Colors.grey[100],
              padding: EdgeInsets.fromLTRB(screenWidth/15, 0, screenWidth/15, 0),
              child: TextFormField(
                controller: usernameController,

                style: TextStyle(fontSize:25),
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.edit),
                  labelText: "UserName",
                  labelStyle: TextStyle(fontSize:25, color: Colors.black,),
                  hintText: "Username",
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
              width: screenWidth,
              color: Colors.grey[100],
              padding: EdgeInsets.fromLTRB(screenWidth/15, 0, screenWidth/15, 0),
              child: TextFormField(
                controller: manufacturerController,
                //initialValue: manufacturer,
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
              width: screenWidth,
              color: Colors.grey[100],
              padding: EdgeInsets.fromLTRB(screenWidth/15, 0, screenWidth/15, 0),
              child: TextFormField(
                controller: modelController,
                //initialValue: model,
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

            SizedBox(height: screenHeight/60,),
            Container(
              height: screenHeight/15,
              width: screenWidth,
              color: Colors.grey[100],
              padding: EdgeInsets.fromLTRB(screenWidth/15, screenHeight/40, screenWidth/15, 0),
              child: Text('Maintenance Reminder:', style: TextStyle(fontSize: 25),),
            ),
            Container(
              height: screenHeight/18,
              width: screenWidth,
              color: Colors.grey[100],
              padding: EdgeInsets.fromLTRB(screenWidth/15, 0, screenWidth/15, 0),
              child: DropdownButton<String>(
                value: dropDownValue,
                items: <String>['Every 1 Week', 'Every 2 Week', 'Every 4 Week',]
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 25),
                    ),
                  );
                }).toList(),
                // Step 5.
                onChanged: (String? newValue) {
                  setState(() {
                    dropDownValue = newValue!;
                  });
                },
              ),
            ),
            SizedBox(height: screenHeight/30,),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  //Map user_info = {'username': usernameController.text,'manufacturer': manufacturerController.text,'model': modelController.text,'frequency': dropDownValue};

                  //Navigator.popAndPushNamed(context, '/Home_Page', arguments: user_info);
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

