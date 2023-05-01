import 'package:flutter/material.dart';
import 'package:flutter_demo_project/ui_helper/utils.dart';

class FloatingActionButtonDemo extends StatefulWidget {
  const FloatingActionButtonDemo({Key? key}) : super(key: key);

  @override
  State<FloatingActionButtonDemo> createState() =>
      _FloatingActionButtonDemoState();
}

class _FloatingActionButtonDemoState extends State<FloatingActionButtonDemo> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Floating Action Button"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Center(
          child: Text(
            counter.toString(),
            style: titleTextStyle31(),
          ),
        ),
      ),
    );
  }
}
