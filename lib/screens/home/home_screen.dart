import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:test_app/core/res/media.dart';
import 'package:test_app/core/utils/all_json.dart';
import 'package:test_app/core/res/styles/app_styles.dart';
import 'package:test_app/core/widgets/app_double_text.dart';
import 'package:test_app/core/widgets/app_routes.dart';
import 'package:test_app/core/widgets/heading_text.dart';
import 'package:test_app/core/widgets/ticket_view.dart';
import 'package:test_app/screens/home/widgets/hotel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Good morning!",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5,
                        ), //horizontal space between the widgets
                        HeadingText(text: "Book tickets!", isColor: false)
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      // color: Colors.red,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(AppMedia.logo))),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      SizedBox(width: 7),
                      Text("Search")
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                AppDoubleText(
                  bigText: "Upcoming Flights",
                  smallText: "View All",
                  func: () => Navigator.pushNamed(context, "/all_tickets"),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList
                        .take(2)
                        .map((singleTicket) => GestureDetector(
                      onTap: () {
                        var index = ticketList.indexOf(singleTicket);
                        Navigator.pushNamed(
                          context, AppRoutes.ticketScreen,
                          arguments: {
                            "index": index
                          }
                        );
                      },
                            child: TicketView(ticket: singleTicket)))
                        .toList(),
                  ),
                ),
                const SizedBox(height: 20),
                AppDoubleText(
                  bigText: "Hotels",
                  smallText: "View All",
                  func: () => Navigator.pushNamed(context, "/all_hotels"),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: hotelList
                          // .take(2)
                          .map((singleHotel) => GestureDetector(
                        onTap: () {
                          var index = hotelList.indexOf(singleHotel);
                          Navigator.pushNamed(context, AppRoutes.hotelDetail, arguments: {
                            "index": index
                          });
                        },
                              child: Hotel(hotel: singleHotel)))
                          .toList(),
                    )),
                // Hotel()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
