import 'package:flutter/material.dart';
import 'package:test_app/core/res/styles/app_styles.dart';
import 'package:test_app/screens/all_tickets.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({super.key, required this.bigText, required this.smallText});

  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headLineStyle3),
        InkWell(
          onTap:() => Navigator.pushNamed(context, "/all_tickets"),
          child: Text(smallText, style: AppStyles.textStyle.copyWith(
            color: AppStyles.primaryColor
          ),),
        )
      ],
    );
  }
}
