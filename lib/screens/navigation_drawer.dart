import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_project/screens/bottomsheet.dart';
import 'package:flutter_demo_project/screens/navbar.dart';
import 'package:flutter_demo_project/ui_helper/utils.dart';

class NavigationDrawerScreen extends StatelessWidget {
  NavigationDrawerScreen({Key? key}) : super(key: key);

  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _key,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text("Navigation Drawer"),
          leading: IconButton(
              onPressed: () {
                _key.currentState?.openDrawer();
              },
              icon: const Icon(Icons.menu)),
        ),
        drawer: NavigationBarDemo(),
        drawerEnableOpenDragGesture: false,
        body: BottomSheetDemo(),
      ),
    );
  }
}
/*
child: ListView(
padding: EdgeInsets.zero,
children: [
DrawerHeader(
decoration: BoxDecoration(color: Colors.blue),
child: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.start,
children: [
Container(
child: CircleAvatar(
child: Image.asset(
"assests/images/man.png",
),
),
width: 100,
height: 100,
),
Text("Drawer Header",style: titleTextStyle16(textColor: Colors.white),)
],
),
),
),
ListTile(title: Text("Title 1"),),
ListTile(title: Text("Title 2"),),
ListTile(title: Text("Title 3"),),
],
),*/
