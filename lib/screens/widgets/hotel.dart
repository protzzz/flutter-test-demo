import 'package:flutter/material.dart';
import 'package:test_app/core/res/media.dart';
import 'package:test_app/core/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(right: 18),
      width: size.width * 0.6,
      height: 350,

      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(25)
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  AppMedia.hotelRoom
                )
              )
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "Open space",
              style: AppStyles.headLineStyle3.copyWith(color: AppStyles.kakiColor),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "London",
              style: AppStyles.headLineStyle2.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "\$25/night",
              style: AppStyles.headLineStyle3.copyWith(color: AppStyles.kakiColor),
            ),
          )
        ],
      )
    );
  }
}
