import 'package:flutter/material.dart';

Future<void> showInputDialog(
    BuildContext context, List<String> parkingTickets) async {
  String licensePlate = '';

  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Thông báo'),
            SizedBox(
              height: 10,
            ),
            Text(
              'Biển số xe',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        content: TextField(
          onChanged: (value) {
            licensePlate = value;
          },
          decoration: const InputDecoration(
            hintText: 'Nhập biển số xe',
            suffixIcon: Icon(
              Icons.camera_alt,
              color: Colors.green,
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Đóng hộp thoại
            },
            child: Text('Hủy'),
          ),
          TextButton(
            onPressed: () {
              parkingTickets.add(licensePlate);
              Navigator.of(context).pop();
            },
            child: const Text(
              'Xác nhận',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      );
    },
  );
}
