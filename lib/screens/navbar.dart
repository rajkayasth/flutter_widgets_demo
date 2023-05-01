// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_demo_project/screens/bottomsheet.dart';

class NavigationBarDemo extends StatelessWidget {
  const NavigationBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Raj Kayasth"),
            accountEmail: const Text("rajdemo@gmai.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.asset(
                  "assests/images/man.png",
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.pinkAccent,
              image: DecorationImage(
                  image: AssetImage("assests/images/bg2.jpg"),
                  fit: BoxFit.fill),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () => BottomSheetDemo(),
          ),
        ],
      ),
    );
  }
}
