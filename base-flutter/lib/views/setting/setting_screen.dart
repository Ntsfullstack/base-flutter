import 'package:flutter/material.dart';
import 'package:ints/views/setting/setting_binding.dart';

class setting_page extends StatelessWidget {
  const setting_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XffF0F0F2),
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'BAN QUẢN LÝ VÉ GỬI XE',
              style: TextStyle(
                fontSize: 23,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 2),
            Text(
              '0123124123',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SettingList(),
          ContactList(),
        ],
      ),
    );
  }
}
