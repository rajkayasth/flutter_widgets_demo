import 'package:flutter/material.dart';
import 'package:flutter_demo_project/ui_helper/utils.dart';
import 'package:flutter_demo_project/widgets/rounded_button.dart';

class CustomStateDemo extends StatefulWidget {
  const CustomStateDemo({Key? key}) : super(key: key);

  @override
  State<CustomStateDemo> createState() => _CustomStateDemoState();
}

class _CustomStateDemoState extends State<CustomStateDemo> {
  var textController1 = TextEditingController();
  var textController2 = TextEditingController();
  var total = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Updating States"),
        ),
        body: Container(
          color: Colors.blue.shade100,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: textController1,
                    decoration: InputDecoration(
                        hintText: "Enter Value",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: textController2,
                    decoration: InputDecoration(
                        hintText: "Enter Value",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RoundedButton(btnName: "+",callback: (){
                          var text1 = int.parse(textController1.text.toString());
                          var text2 = int.parse(textController2.text.toString());
                          total = "total addition of $text1 and $text2 is ${text1+text2}";
                          print(total);
                          setState(() {});
                        }),
                        RoundedButton(btnName: "-",callback: (){
                          var text1 = int.parse(textController1.text.toString());
                          var text2 = int.parse(textController2.text.toString());
                          total = "total substation of $text1 and $text2 is ${text1-text2}";
                          print(total);
                          setState(() {});

                        }),
                        RoundedButton(btnName: "*",callback: (){
                          var text1 = int.parse(textController1.text.toString());
                          var text2 = int.parse(textController2.text.toString());
                          total = "total multiplication of $text1 and $text2 is ${text1*text2}";
                          print(total);
                          setState(() {});

                        }),
                        RoundedButton(btnName: "/",callback: (){
                          var text1 = int.parse(textController1.text.toString());
                          var text2 = int.parse(textController2.text.toString());
                          total = "total division of $text1 and $text2 is ${text1/text2}";
                          print(total);
                          setState(() {});
                        },),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  Flexible(
                      child: Text(total,style: titleTextStyle16(textColor: Colors.black),))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
