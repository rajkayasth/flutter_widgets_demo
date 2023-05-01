import 'package:flutter/material.dart';
import 'package:flutter_demo_project/screens/bottom_navigation_bar.dart';
import 'package:flutter_demo_project/ui_helper/utils.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Navigation Route Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "data",
                style: titleTextStyle16(textColor: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavigationScreen(),
                    ),
                  );
                },
                child: const Text("Next Screen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
