import 'package:flutter/material.dart';

class GridViewDemo extends StatefulWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  State<GridViewDemo> createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo> {
  @override
  Widget build(BuildContext context) {
    var arrColor = [
      Colors.deepPurpleAccent,
      Colors.deepOrange,
      Colors.red,
      Colors.yellow,
      Colors.brown,
      Colors.teal
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("GridView"),
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 11,
                mainAxisSpacing: 11,
                children: [
                  Expanded(
                    child: Container(
                      color: arrColor[0],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: arrColor[1],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: arrColor[2],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: arrColor[3],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: arrColor[4],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: arrColor[5],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 100,
            ),
            Container(
              height: 200,
              child: GridView.extent(
                maxCrossAxisExtent: 100,
                children: [
                  Container(
                    color: arrColor[0],
                  ),
                  Container(
                    color: arrColor[1],
                  ),
                  Container(
                    color: arrColor[2],
                  ),
                  Container(
                    color: arrColor[3],
                  ),
                  Container(
                    color: arrColor[4],
                  ),
                  Container(
                    color: arrColor[5],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
