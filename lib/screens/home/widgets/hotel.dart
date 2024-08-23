import 'package:flutter/material.dart';
import 'package:test_app/core/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel});

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
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/${hotel['image']}"
                      ))),
            ),
            const SizedBox(height: 5),
            Text(
                hotel['place'],
                style: AppStyles.headLineStyle1
                    .copyWith(color: AppStyles.kakiColor),
              ),
            const SizedBox(height: 5),
            Text(
                hotel['destination'],
              style: AppStyles.headLineStyle2.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 5),
            Text(
              "\$${hotel['price']}/night",
              style: AppStyles.headLineStyle3
                  .copyWith(color: AppStyles.kakiColor),
            )
          ],
        ));
  }
}
