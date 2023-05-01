import 'package:flutter/material.dart';

class ContainerDecoration extends StatelessWidget {
  const ContainerDecoration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContainerDemo(),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Decoration"),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 50,
            color: Colors.blue,
          ),
          Expanded(
            child: Container(
              height: 100,
              width: 50,
              color: Colors.orange,
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              width: 50,
              color: Colors.green,
            ),
          ),
          Container(
            height: 100,
            width: 50,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
