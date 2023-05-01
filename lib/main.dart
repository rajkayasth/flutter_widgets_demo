import 'package:flutter/material.dart';

import 'package:flutter_demo_project/screens/intro_page.dart';
import 'package:flutter_demo_project/screens/splash_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}
