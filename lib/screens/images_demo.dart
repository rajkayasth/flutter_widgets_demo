import 'package:flutter/material.dart';

class ImagesDemo extends StatelessWidget {
  const ImagesDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Button's Demo"),
        ),
        body: Center(
            child: Container(
              width: 200,
              height: 200,
              child: Image.asset('assets/images/man.png'),
          ),
        )),
      );
  }
}
