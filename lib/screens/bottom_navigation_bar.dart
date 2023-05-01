import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 0;
  final List<Widget> widgetList= <Widget>[
    const Icon(Icons.home,size: 200,),
    const Icon(Icons.person,size: 200,),
    const Icon(Icons.settings ,size: 200,),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bottom Navigation"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items:  const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
          ],
          currentIndex: _currentIndex,
          onTap: _updateIndex,
        ),
        body: Center(
          child: widgetList[_currentIndex],
        ),
      ),
    );
  }
  void _updateIndex(int index){
    setState(() {
      _currentIndex = index;
    });
  }
}


