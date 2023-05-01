import 'package:flutter/material.dart';

class InkWellDemo extends StatelessWidget {
  const InkWellDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Title"),),
        key: scaffoldKey,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(

                      children: [
                        Container(height: 200,width: 200,color: Colors.orange,margin: EdgeInsets.only(right: 8),),
                        Container(height: 200,width: 200,color: Colors.lightBlueAccent,margin: EdgeInsets.only(right: 8),),
                        Container(height: 200,width: 200,color: Colors.blue,margin: EdgeInsets.only(right: 8),),
                        Container(height: 200,width: 200,color: Colors.black45,margin: const EdgeInsets.only(right: 8),),
                      ],
                    ),
                  ),
                ),
                Container(height: 200,color: Colors.blueAccent,margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),),
                Container(height: 200,color: Colors.deepPurpleAccent,margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),),
                Container(height: 200,color: Colors.amber,margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),),
                Container(height: 200,color: Colors.lime,margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),),
                Container(height: 200,color: Colors.black45,margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),),
                Container(height: 200,color: Colors.grey,margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),),
                Container(height: 200,color: Colors.amber,margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),)
              ] ,
            ),
          ),
        ),
      ),
    );
  }
}
