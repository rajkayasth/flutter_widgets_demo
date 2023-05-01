import 'package:flutter/material.dart';

class StackWidgetDemo extends StatelessWidget {
  const StackWidgetDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack Widgets"),
        ),
        body: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.blueGrey,
            ),
            Positioned(
              left: 21,
              top: 21,
              bottom: 0,
              right: 0,
              child: Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
