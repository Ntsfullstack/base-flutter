import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ints/models/vehicle.dart';
import 'package:ints/views/list_ticket/list_ticket_binding.dart';

class ViewTicket extends StatelessWidget {
  final Ticket ticket;

  const ViewTicket({required this.ticket});

  @override
  Widget build(BuildContext context) {
    // Define a custom text style
    const TextStyle customTextStyle = TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.normal,
    );

    return Scaffold(
      backgroundColor: const Color(0XffF0F0F2),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.5,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Xem trước vé',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'BAN QUẢN LÝ VÉ GỬI XE',
                style: customTextStyle.copyWith(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Vé gửi xe Phường Cổ Nhuế, Quận Bắc Từ Liêm, Thành Phố Hà Nội',
                  style: customTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'MST12345667',
                style: customTextStyle,
              ),
              const SizedBox(height: 10),
              Text(
                'VÉ GỬI XE',
                style: customTextStyle.copyWith(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'Vé trông giữ ${ticket.vehicleType}',
                style: customTextStyle,
              ),
              const SizedBox(height: 10),
              Text(
                'Giá vé ${ticket.totalAmount} đồng / lượt',
                style: customTextStyle,
              ),
              const SizedBox(height: 10),
              const Text(
                ' Vé gửi xe đã bao gồm thuế GTGT và bảo hiểm hành khách',
                style: customTextStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                'Biển số xe: ${ticket.licensePlate}',
                style: customTextStyle,
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffe0595d),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                width: double.infinity, // Rộng hết khoảng trống
                height: 60,
                child: const Center(
                  child: Text(
                    'In mẫu',
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
