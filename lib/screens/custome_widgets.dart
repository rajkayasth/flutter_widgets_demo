import 'package:flutter/material.dart';
import 'package:flutter_demo_project/ui_helper/utils.dart';
import 'package:flutter_demo_project/widgets/rounded_button.dart';

class CustomWidgetsDemo extends StatelessWidget {
  const CustomWidgetsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom Widgets"),
        ),
        body: Wrap(
          children: [
            Container(width: 100,height: 100,color: Colors.blueGrey,),
            Container(width: 100,height: 100,color: Colors.teal,),
            Container(width: 100,height: 100,color: Colors.greenAccent,),
            Container(width: 100,height: 100,color: Colors.lightGreen,),
            Container(width: 100,height: 100,color: Colors.green,),
          ],
        ),
      ),
    );
  }
}


///Custom Button Demo
/*
Center(
child: Container(
width: 170,
child: RoundedButton(
btnName: "Custom Button",
icon: Icon(Icons.lock),
callback: () {
print("Login");
},
textStyle: titleTextStyle16(textColor: Colors.white),
),
),
)*/
