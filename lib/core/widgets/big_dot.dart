import 'package:flutter/material.dart';
import 'package:test_app/core/res/styles/app_styles.dart';

class BigDot extends StatelessWidget {
  const BigDot({super.key, this.isColor});

  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          border: Border.all(
              width: 2.5,
              color: isColor == null ? Colors.white : AppStyles.dotColor),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
