import 'package:flutter/material.dart';

class TextFieldDemo extends StatelessWidget {
  const TextFieldDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailText = TextEditingController();
    var passText = TextEditingController();

    final GlobalKey<ScaffoldMessengerState> _scaffoldKey =  GlobalKey<ScaffoldMessengerState>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
          title: Text("Text Field Demo"),
        ),
        body: Center(
            child: Container(
                margin: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: emailText,
                      decoration: InputDecoration(
                          hintText: "Enter Email",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.deepOrange),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.deepPurpleAccent))),
                    ),
                    Container(
                      height: 20,
                    ),
                    TextField(
                      controller: passText,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                          border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                    ),
                    Container(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        String email = emailText.text.toString();
                        String pass = passText.text.toString();
                        print("Email is  $email pass is $pass");
                        _scaffoldKey.currentState?.showSnackBar(SnackBar(
                          content: Text(email+pass),
                          backgroundColor: Colors.black,
                          duration: Duration(seconds: 2),
                        ),);

                      },
                      child: Text("Button"),
                    ),

                  ],
                ))),
      ),
    );

  }
}


