import 'package:flutter/material.dart';
import 'package:test_app/core/bottom_nav_bar.dart';
import 'package:test_app/screens/home/all_tickets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const BottomNavBar(),
      routes: {
        "/":(context) => const BottomNavBar(),
        "/all_tickets":(context) => const AllTickets(),
      },
    );
  }
}
