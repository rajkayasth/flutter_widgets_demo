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
      ///Named Navigation
      Navigator.pushNamed(context, '/login',arguments: "this is an argument");

      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
      ///Other Animation Type of navigation in flutter
      ///
      /// 01 fade transition effect
      /*Navigator.push(
        context,
        PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                const LoginPage(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            transitionDuration: const Duration(milliseconds: 1000)),
      );*/

      ///02 With Slide Animation
      /*Navigator.push(context, PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
          return LoginPage();
        },
        transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-1.0, 0.0),
              end: Offset.zero,
            ).animate(animation),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: Offset.zero,
                end: const Offset(-1.0, 0.0),
              ).animate(secondaryAnimation),
              child: child,
            ),
          );
        },
      ));*/
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
