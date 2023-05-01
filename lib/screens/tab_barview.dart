import 'package:flutter/material.dart';

class TabBarViewDemo extends StatelessWidget {
  const TabBarViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("TabBarView"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.settings),
                ),
                Tab(
                  icon: Icon(Icons.shop),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.home,size: 250,),
              Icon(Icons.settings,size: 250),
              Icon(Icons.play_arrow,size: 250),
            ],
          ),
        ),
      ),
    );
  }
}
