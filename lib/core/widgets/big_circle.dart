import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  const BigCircle({super.key, required this.isRight});

  final bool isRight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 20,
        width: 10,
        child: DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: isRight == true
                    ? const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10))
                    : const BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10)))));
  }
}
