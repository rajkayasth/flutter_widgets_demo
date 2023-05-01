import 'package:flutter/material.dart';

import 'package:flutter_demo_project/screens/login_page.dart';
import 'package:flutter_demo_project/screens/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      /* home: SplashScreen(),*/
      initialRoute: '/splash',
      onGenerateRoute: (settings) {
        final args = settings.arguments;
        switch (settings.name) {
          case '/splash':
            {
              return MaterialPageRoute(builder: (context) => const SplashScreen(),);
            }
          case '/login':
            {
              return PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      LoginPage(args),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  transitionDuration: const Duration(milliseconds: 1000));
            }
        }
      },
    ),
  );
}
