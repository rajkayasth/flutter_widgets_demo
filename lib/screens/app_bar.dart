import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter App"),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.settings)),
          ],
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
