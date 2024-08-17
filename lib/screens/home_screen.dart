import 'package:flutter/material.dart';
import 'package:test_app/core/res/styles/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Good morning!", style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                        ),),
                        const SizedBox(height: 5, ), //horizontal space between the widgets
                        Text("Book tickets!", style: AppStyles.headLineStyle1),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      // color: Colors.red,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Search-icon"),
                    Text("Empty page"),
                  ],
                )
              ],
            ),
          ),
          // Container(child: const Text("Good morning!"),),
          // Container(child: const Text("Book tickets!"),),
        ],
      ),
    );
  }
}