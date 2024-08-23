import 'package:flutter/material.dart';
import 'package:test_app/core/utils/all_json.dart';
import 'package:test_app/core/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map((singltTicket) =>
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: TicketView(ticket: singltTicket, wholeScreen: true,)
                      )
                    )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
