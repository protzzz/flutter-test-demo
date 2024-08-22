import 'package:flutter/material.dart';
import 'package:test_app/core/widgets/text_style_fourth.dart';
import 'package:test_app/core/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  const AppColumnTextLayout({super.key, required this.topText, required this.bottomText, this.alignment = CrossAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleFourth(text: topText),
        const SizedBox(height: 5),
        TextStyleThird(text: bottomText)
      ],
    );
  }
}
