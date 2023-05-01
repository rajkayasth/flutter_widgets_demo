import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_demo_project/ui_helper/utils.dart';

class TabBarViewDemo2 extends StatefulWidget {
  const TabBarViewDemo2({Key? key}) : super(key: key);

  @override
  State<TabBarViewDemo2> createState() => _TabBarViewDemo2State();
}

class _TabBarViewDemo2State extends State<TabBarViewDemo2>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabBarControl = TabController(length: 3, vsync: this);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("TabBar View"),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Tab bar Demo",
                style: titleTextStyle31(textColor: Colors.black)
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Align(
                alignment: Alignment.center,
                child: TabBar(
                  controller: tabBarControl,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.blueGrey,
                  //labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  //isScrollable: true,
                  indicatorColor: Colors.lightBlueAccent,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.lightBlueAccent
                  ),
                  tabs: const [
                    Tab(
                      text: "Places",
                      icon: Icon(Icons.place),
                    ),
                    Tab(
                      text: "Inspiration",
                      icon: Icon(Icons.ac_unit),
                    ),
                    Tab(
                      text: "Demos",
                      icon: Icon(Icons.account_box_outlined),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 300,
                margin: EdgeInsets.only(left: 20,right: 20),
                child: TabBarView(
                  controller: tabBarControl,
                  children: [
                    ListView.builder(
                      itemBuilder: (_, index) {
                        return Container(
                          height: 300,
                          width: 200,
                          margin: const EdgeInsets.only(right: 10,top: 15),
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(image: AssetImage("assests/images/bg2.jpg"),fit: BoxFit.fill),
                          ),
                        );
                      },
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                    ),
                    ListView.builder(
                      itemBuilder: (_, index) {
                        return Container(
                          height: 150,
                          width: 300,
                          margin: EdgeInsets.all(31),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(21),
                            ),
                            image: DecorationImage(image: AssetImage("assests/images/man.png"),fit: BoxFit.fitWidth),
                          ),
                        );
                      },
                      itemCount: 5,
                    ),
                    ListView.builder(
                      itemBuilder: (_, index) {
                        return Container(
                          height: 150,
                          width: 300,
                          margin: EdgeInsets.all(31),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(21),
                            ),
                            image: DecorationImage(image: AssetImage("assests/images/woman.png"),fit: BoxFit.fitWidth),
                          ),
                        );
                      },
                      itemCount: 5,
                    )
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
