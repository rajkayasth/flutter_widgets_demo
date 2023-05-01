import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter demo"),),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.amberAccent,
            child: Text("Hello Container"),
          ),
        ),
      ),
    );
  }
}
