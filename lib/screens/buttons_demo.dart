import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Button's Demo"),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
               print("Text Button Tapped");
              },
              style: ButtonStyle(backgroundColor:  MaterialStateProperty.all<Color>(Colors.red)),
              onLongPress: (){
                print("Long Pressed");
              },
              child: const Text("Click Me")),
        ),
      ),
    );
  }
}
