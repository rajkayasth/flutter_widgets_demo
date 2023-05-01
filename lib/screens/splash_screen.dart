import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_demo_project/screens/bottom_navigation_bar.dart';
import 'package:flutter_demo_project/screens/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Image.asset(
            'assests/images/splash3x.png',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
