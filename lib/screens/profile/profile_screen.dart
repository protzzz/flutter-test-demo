import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:test_app/core/res/media.dart';
import 'package:test_app/core/res/styles/app_styles.dart';
import 'package:test_app/core/widgets/heading_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Padding(padding: EdgeInsets.only(top: 60)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 86,
                height: 86,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage(
                      AppMedia.logo,
                    ))),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeadingText(
                    text: "Book tickets",
                    isColor: false,
                  ),
                  Text("New-York",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500)),
                  const SizedBox(height: 8),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    decoration: BoxDecoration(
                        color: AppStyles.profileLocationColor,
                        borderRadius: BorderRadius.circular(100)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppStyles.profileTextColor),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "Premium status",
                          style: TextStyle(
                              color: AppStyles.profileTextColor,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Expanded(child: Container()),
              Text(
                "Edit",
                style: TextStyle(
                    color: AppStyles.primaryColor, fontWeight: FontWeight.w300),
              )
            ],
          ),
          const SizedBox(height: 8),
          Divider(color: Colors.grey.shade300),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppStyles.primaryColor,
                    borderRadius: BorderRadius.circular(18)),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: AppStyles.primaryColor,
                        size: 27,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've got a new award",
                          style: AppStyles.textStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: AppStyles.textStyle2.copyWith(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                  top: -40,
                  right: -45,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(width: 18, color: const Color(0xFF264CD2))),
                  ))
            ],
          ),
          const SizedBox(height: 25),
          Text("Accumulated miles", style: AppStyles.headLineStyle3),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: AppStyles.bgColor
            ),
            child: Column(
              children: [
                const SizedBox(height: 15),
                Text("192802", style: TextStyle(
                  fontSize: 45, color: AppStyles.textColor, fontWeight: FontWeight.w600
                ),),
                Row(
                  children: [
                    
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
