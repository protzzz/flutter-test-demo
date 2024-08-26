import 'package:flutter/material.dart';
import 'package:test_app/core/res/styles/app_styles.dart';
import 'package:test_app/core/widgets/app_column_text_layout.dart';
import 'package:test_app/core/widgets/app_layoutbuilder_widget.dart';
import 'package:test_app/core/widgets/big_circle.dart';
import 'package:test_app/core/widgets/big_dot.dart';
import 'package:test_app/core/widgets/text_style_fourth.dart';
import 'package:test_app/core/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 180,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor == null
                      ? AppStyles.ticketBlue
                      : AppStyles.ticketColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  Row(
                    children: [
                      TextStyleThird(
                          text: ticket["from"]["code"], isColor: isColor),
                      Expanded(child: Container()),
                      BigDot(isColor: isColor),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(
                                randomDivider: 6,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                  angle: 1.57,
                                  child: Icon(
                                    Icons.local_airport_rounded,
                                    color: isColor == null
                                        ? Colors.white
                                        : AppStyles.planeColor2,
                                  )),
                            )
                          ],
                        ),
                      ),
                      BigDot(isColor: isColor),
                      Expanded(child: Container()),
                      TextStyleThird(
                          text: ticket["to"]["code"], isColor: isColor)
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      TextStyleFourth(
                          text: ticket["from"]["name"], isColor: isColor),
                      Expanded(child: Container()),
                      TextStyleFourth(
                          text: ticket["flying_time"],
                          align: TextAlign.center,
                          isColor: isColor),
                      Expanded(child: Container()),
                      TextStyleFourth(
                          text: ticket["to"]["name"],
                          align: TextAlign.end,
                          isColor: isColor),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 20,
              color: isColor == null
                  ? AppStyles.ticketOrange
                  : AppStyles.ticketColor,
              child: Row(
                children: [
                  BigCircle(
                    isRight: false,
                    isColor: isColor,
                  ),
                  Expanded(
                      child:
                          AppLayoutBuilderWidget(randomDivider: 16, width: 7, isColor: isColor,)
                  ),
                  BigCircle(
                    isRight: true,
                    isColor: isColor,
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor == null ? AppStyles.ticketOrange : AppStyles.ticketColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor == null?21:0),
                      bottomRight: Radius.circular(isColor == null?21:0))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                          topText: ticket["date"], bottomText: "Date", isColor: isColor,),
                      AppColumnTextLayout(
                        topText: ticket["departure_time"],
                        bottomText: "Departure time",
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      AppColumnTextLayout(
                        topText: ticket["number"].toString(),
                        bottomText: "№",
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
