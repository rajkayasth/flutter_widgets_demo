import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: TextWidget(),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "Hello World",
      style: TextStyle(
          color: Colors.orange,
          fontStyle: FontStyle.italic,
          letterSpacing: 5,
          fontWeight: FontWeight.bold,
          fontSize: 32),
    ));
  }
}
/*Text.rich(
        TextSpan(
          text: "hello",
          children: <TextSpan>[
            TextSpan(
                text: "Demo Text",
                style: TextStyle(
                    color: Colors.blueAccent, fontWeight: FontWeight.bold)),
            TextSpan(
                text: "Example Text",
                style: TextStyle(
                    color: Colors.red, fontWeight: FontWeight.bold,)),
          ],
        ),

         focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.blueGrey
                      ),
                    )
      ),*/
