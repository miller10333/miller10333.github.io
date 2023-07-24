import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  double screenWidth = 0;
  double screenHeight = 0;
  //String dropDownValue = "Every 1 Week";
  final usernameController = TextEditingController();
  final manufacturerController = TextEditingController();
  final modelController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

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
            SizedBox(height: screenHeight/4,),
            Center(
              child: Container(
                height: screenHeight/11,
                width: screenWidth*14/15,
                color: Colors.grey[300],
                padding: EdgeInsets.fromLTRB(screenWidth/5, screenHeight/60, screenWidth/15, 0),
                child: Text('What is your name?',style: TextStyle(fontSize:25, color: Colors.black,), ),
              ),
            ),

            Center(
              child: Container(
                height: screenHeight/11,
                width: screenWidth*14/15,
                color: Colors.grey[100],
                padding: EdgeInsets.fromLTRB(screenWidth/15, 0, screenWidth/15, 0),
                /*

                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children:[
                    Text('UserName:  ',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.normal )),
                    SizedBox(width: screenWidth/15,),
                    TextFormField(
                      controller: usernameController,
                      style: TextStyle(fontSize:25),
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.edit),
                        hintText: "i.e. John Doe",
                        hintStyle: TextStyle(fontSize:20),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 5, color: Colors.white38,),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 5,color: Colors.black26,),
                        ),
                      ),
                    ),
                  ],
                ),

                 */

                child: TextFormField(
                  controller: usernameController,
                  //onChanged: (v) => usernameController.text = v,
                  style: TextStyle(fontSize:25),
                  //child: Row(),
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.edit),
                    labelText: "UserName",
                    labelStyle: TextStyle(fontSize:25, color: Colors.black,),
                    hintText: "i.e. John Doe",
                    hintStyle: TextStyle(fontSize:15),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 5, color: Colors.white38,),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 5,color: Colors.black26,),
                    ),
                  ),
                ),

              ),
            ),


            SizedBox(height: screenHeight/60,),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Map user_info = {'username': usernameController.text,'manufacturer': '','model': '','frequency': ''};
                  Navigator.pushReplacementNamed(context, '/Registration2', arguments: user_info);
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


