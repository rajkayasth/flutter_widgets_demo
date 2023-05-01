import 'package:flutter/material.dart';

class RowColumnDemo extends StatelessWidget {
  const RowColumnDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ROWS COLUMNS"),
        ),
        body: Container(
          child: Column(
            children: [
                  Text(" 1",style: TextStyle(fontSize: 20),),
                  Text(" 2",style: TextStyle(fontSize: 20),),
                  Text(" 3",style: TextStyle(fontSize: 20),),
                  Text(" 4",style: TextStyle(fontSize: 20),),
                  Text(" 5",style: TextStyle(fontSize: 20),),
                  ElevatedButton(onPressed: (){}, child: Text("DEMO TEXT")),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(" R1",style: TextStyle(fontSize: 20),),
                  Text(" R2",style: TextStyle(fontSize: 20),),
                  Text(" R3",style: TextStyle(fontSize: 20),),
                  Text(" R4",style: TextStyle(fontSize: 20),),
                  Text(" R5",style: TextStyle(fontSize: 20),),
                  ElevatedButton(onPressed: (){}, child: Text("DEMO TEXT"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
