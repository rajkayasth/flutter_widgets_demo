import 'package:flutter/material.dart';
import 'package:flutter_demo_project/models/product.dart';
import 'package:flutter_demo_project/ui_helper/utils.dart';
import 'package:flutter_demo_project/widgets/rounded_button.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arrNameList = [
      "Raj",
      "Rahul",
      "Rajesh",
      "Roahan",
      "anil",
      "Tomaaer",
      "Dekho",
      "List View"
    ];

    List<Products> prodcutList = [];
    prodcutList.add(Products(name: "Raj", path: "assests/images/man.png"));
    prodcutList.add(Products(name: "Raja", path: "assests/images/woman.png"));
    prodcutList.add(Products(name: "Raji", path: "assests/images/man.png"));
    prodcutList.add(Products(name: "ahfiha", path: "assests/images/woman.png"));
    prodcutList.add(Products(name: "ahfoua", path: "assests/images/man.png"));
    prodcutList.add(Products(name: "aoiuhf", path: "assests/images/woman.png"));

    print(prodcutList);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,fontFamily: 'FontMainBold'),
          titleMedium: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'FontMain')
        )
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text("ListView"),
            backgroundColor: Colors.blueGrey,
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
                      elevation: 5,
                      shadowColor: Colors.black54,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(prodcutList[index].path),
                          backgroundColor: Colors.blueGrey,
                          radius: 30,
                        ),
                        title: Text(prodcutList[index].name,style: Theme.of(context).textTheme.displayLarge?.copyWith(color: Colors.orange),),
                        subtitle: Text("Number",style: titleTextStyle11(textColor: Colors.blue),),
                        trailing: Icon(Icons.add),
                      ),
                    );
                  },
                  itemCount: prodcutList.length,
                  separatorBuilder: (context, index) {
                    return const Divider(
                      height: 10,
                      thickness: 2,
                    );
                  },
                ),
              ),
              RoundedButton(btnName: "Add Value",icon: Icon(Icons.add),),
            ],
          )),
    );
  }
}
