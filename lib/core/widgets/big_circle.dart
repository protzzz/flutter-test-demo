import 'package:flutter/material.dart';
import 'package:test_app/core/res/styles/app_styles.dart';

class BigCircle extends StatelessWidget {
  const BigCircle({super.key, required this.isRight, this.isColor});

  final bool isRight;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 20,
        width: 10,
        child: DecoratedBox(
            decoration: BoxDecoration(
                color: isColor == null ? Colors.white : Colors.grey.shade200,
                borderRadius: isRight == true
                    ? const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10))
                    : const BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10)))));
  }
}
