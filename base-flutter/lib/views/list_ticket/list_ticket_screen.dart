import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ints/models/vehicle.dart';
import 'package:ints/views/list_ticket/list_ticket_binding.dart';
import 'package:ints/views/list_ticket/view_ticket.dart';
import 'package:ints/views/sort_ticket/sortTicket_screen.dart';

class TicketList extends StatelessWidget {
  List<Ticket> tickets = ticketsData;
  int numberOfTickets = 0;
  double totalAmount = 0.0;

  TicketList() {
    numberOfTickets = countTickets(tickets);
    totalAmount = calculateTotalAmount(tickets);
  }

  @override
  Widget build(BuildContext context) {
    String numberOfTicketsString = numberOfTickets.toString();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0XffF0F0F2),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
        backgroundColor: Colors.green,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: Text(
                'DANH SÁCH VÉ',
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.9,
                      child: sort(), // Replace with your custom content
                    );
                  },
                );
              },
              child: const Icon(Icons.filter_list),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    'Tổng vé: ${numberOfTickets.toString()}',
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const Spacer(),
                  Text(
                    'Tổng tiền: ${totalAmount.toString()} VND',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tickets.length,
              itemBuilder: (context, index) {
                return TicketCard(ticket: tickets[index]);
              },
            ),
          ),
          Container(
            color: Colors.green,
            padding: const EdgeInsets.all(7.0),
            child: const Row(
              children: [
                Text(
                  'In báo cáo',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  Icons.print,
                  size: 30,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TicketCard extends StatelessWidget {
  final Ticket ticket;

  TicketCard({required this.ticket});

  @override
  Widget build(BuildContext context) {
    String formattedTime = DateFormat('HH:mm:ss').format(ticket.time);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      margin: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ViewTicket(ticket: ticket),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(
              'Vé trông giữ ${ticket.vehicleType}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(
                      Icons.numbers,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'Biển số xe: ${ticket.licensePlate}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(
                      Icons.access_alarm,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'Thời gian gửi: ${ticket.time.toString()}',
                      style: const TextStyle(fontSize: 16),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.money,
                      color: Colors.green,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '${ticket.totalAmount} ',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
