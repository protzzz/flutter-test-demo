import 'package:flutter/material.dart';
import 'package:test_app/core/res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final bool? isColor;
  const TextStyleThird({super.key, required this.text, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isColor == null 
        ? AppStyles.headLineStyle2.copyWith(color: Colors.white)
        : AppStyles.headLineStyle2,
    );
  }
}
