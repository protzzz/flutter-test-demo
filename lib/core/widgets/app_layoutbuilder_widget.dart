import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  const AppLayoutBuilderWidget(
      {super.key, required this.randomDivider, this.width = 3, this.isColor});

  final int randomDivider;
  final double width;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      // print("${(constraints.constrainWidth() / randomDivider).floor()}");
      return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
              (constraints.constrainWidth() / randomDivider).floor(),
              (index) => SizedBox(
                    width: width,
                    height: 1,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                      color: isColor == null ? Colors.white : Colors.grey.shade300,
                    )),
                  )));
    });
  }
}
