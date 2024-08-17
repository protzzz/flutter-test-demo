import 'package:flutter/material.dart';
import 'package:test_app/core/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavBar(),
      // title: 'Flutter Demo',
      // theme: ThemeData(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     backgroundColor: Colors.red,
      //   ),
      //   body: const Center(
      //     child: Text("Hello, Flutter!"),
      //   ),
      // )
    );
  }
}
