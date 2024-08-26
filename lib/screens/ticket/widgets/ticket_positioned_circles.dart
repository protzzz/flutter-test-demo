import 'package:flutter/material.dart';

import '../../../core/res/styles/app_styles.dart';

class TicketPositionedCircles extends StatelessWidget {
  const TicketPositionedCircles({super.key, this.pos});

  final bool? pos;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: pos == true ? 22 : null,
      right: pos == true ? null : 22,
      top: 281,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: AppStyles.textColor)),
        child: CircleAvatar(
          maxRadius: 4,
          backgroundColor: AppStyles.textColor,
        ),
      ),
    );
  }
}
