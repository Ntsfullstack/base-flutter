import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TicketBindings extends Bindings {
  final TicketType ticketType;

  TicketBindings({required this.ticketType});

  @override
  void dependencies() {
    Get.lazyPut(() => TicketComponent(
          onTap: () {},
          type: ticketType,
        ));
  }
}

enum TicketType { bike, car }

class TicketComponent extends StatelessWidget {
  final TicketType type;
  final VoidCallback onTap;

  TicketComponent({
    required this.type,
    required this.onTap,
  });

  String get ticketName {
    switch (type) {
      case TicketType.bike:
        return 'VÉ TRÔNG GIỮ XE MÁY';
      case TicketType.car:
        return 'VÉ TRÔNG GIỮ Ô TÔ';
    }
  }

  String get ticketPrice {
    switch (type) {
      case TicketType.bike:
        return '1.0 vé * 3.000';
      case TicketType.car:
        return '1.0 vé * 25.000';
    }
  }

  String get totalPrice {
    switch (type) {
      case TicketType.bike:
        return '3.000';
      case TicketType.car:
        return '25.000';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 4,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ListTile(
          title: Text(
            ticketName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                '${ticketPrice} VND',
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Divider(
                height: 5,
                color: Colors.black,
              ),
              const SizedBox(height: 5),
              Text(
                '${totalPrice} VND',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          trailing: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.print,
                  color: Colors.white,
                  size: 35,
                ),
              ],
            ),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
