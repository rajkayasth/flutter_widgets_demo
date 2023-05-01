import 'package:flutter/material.dart';
import 'package:flutter_demo_project/ui_helper/utils.dart';
import 'package:toast/toast.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();


  final title;

  LoginPage(this.title);

}

enum Gender { Male, Female }

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final globalScaffoldKey = GlobalKey<ScaffoldMessengerState>();
  RegExp passRegex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$');

  RegExp nameRegEx = RegExp(r'^[a-z A-Z]+$');

  bool isSelected = false;

  Gender _gender = Gender.Male;


  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: globalScaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  height: 100,
                  child: Image.asset(
                    'assests/images/appimage.png',
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: 100,
                  child: Image.asset(
                    'assests/images/logo.png',
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  widget.title,
                  style: titleTextStyle20(
                      textColor: Colors.black, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Name",
                        hintStyle: TextStyle(color: Colors.blueGrey),
                        labelText: "Enter Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(style: BorderStyle.solid))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Correct Name";
                      } else {
                        if (!nameRegEx.hasMatch(value)) {
                          return "Please Enter Valid Name";
                        } else {
                          return null;
                        }
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Enter Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(style: BorderStyle.solid),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Correct Password";
                      } else {
                        if (!passRegex.hasMatch(value)) {
                          return "please Enter Valid password";
                        } else {
                          return null;
                        }
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: 250,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        /*const snackBar = SnackBar(content: Text("Correct Details"));
                        scaffoldStateKey.currentState!.showBottomSheet((context) => snackBar);*/
                        print("Validate Item");
                        Toast.show("Validation Item",
                            duration: Toast.lengthShort, gravity: Toast.bottom);

                        ///Routing demo
                      }
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.all(10.0),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    side: BorderSide(color: Colors.grey)))),
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                    ),
                  ),
                ),
                CheckboxListTile(
                  title: Text("Male"),
                  activeColor: Colors.green,
                  checkboxShape: CircleBorder(),
                  value: isSelected,
                  onChanged: (value) {
                    setState(() {
                      isSelected = value!;
                    });
                  },
                ),
                Radio(
                  activeColor: Colors.lightGreenAccent,
                    value: Gender.Male,
                    groupValue: _gender,
                    onChanged: (gender) {
                      setState(() {
                        _gender = gender ?? Gender.Male;
                      });
                    }),
                Radio(
                    value: Gender.Female,
                    groupValue: _gender,
                    onChanged: (gender) {
                      setState(() {
                        _gender = gender ?? Gender.Female;
                      });
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
