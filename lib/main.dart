import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset("images/img_1.png", height: 300, width: 300),
            ),
            SizedBox(height: 20),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Click here to Continue",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                Container(
                    child: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                )),
              ],
            ),
          ]),
        ));
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text(
            "Photography",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: 'Arial Black'),
          ),
          backgroundColor: Color.fromARGB(255, 0, 92, 83),
        ),
        body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(105),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color.fromARGB(255, 255, 255, 255) ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(30,20,30,10),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 235, 67, 67) ),
                child: Text("Photographs is the art of capturing moments and emotions through lens.",style: TextStyle(color: Colors.white,fontSize: 16),),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(30,10,30,10),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 47, 72, 209) ),
                child: Text("Photographs can tell stories, convey emotions, and capture moments in time.",style: TextStyle(color: Colors.white,fontSize: 16),),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(30,10,30,10),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 235, 67, 171) ),
                child: Text("Composition is an important aspect of photography, and can greatly affect the impact and quality of an image.",style: TextStyle(color: Colors.white,fontSize: 16),),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(30,10,30,20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 7, 97, 52) ),
                child: Text("Lighting is a critical element of photography, as it can greatly impact the mood, tone, and overall quality of an image.",style: TextStyle(color: Colors.white,fontSize: 16,),),
              ),
              
            ],
          ),
),
        );
  }
}
