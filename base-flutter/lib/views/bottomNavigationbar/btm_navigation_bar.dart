import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ints/views/bottomNavigationbar/bottomNavigationBar_controller.dart';
import 'package:ints/views/list_ticket/list_ticket_screen.dart';
import 'package:ints/views/setting/setting_screen.dart';
import 'package:ints/views/ticket/ticket_screen.dart';

class BottomBarScreen extends GetView<BottomBarController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        children: controller.pages,
      ),
      bottomNavigationBar: SafeArea(
        child: Obx(
          () => BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: _buildBottomBarItem(Icons.print, "In vé"),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _buildBottomBarItem(Icons.folder, "Danh sách vé"),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _buildBottomBarItem(Icons.list, "Cài đặt"),
                label: '',
              ),
            ],
            currentIndex: controller.selectedIndex.value,
            onTap: controller.onItemTapped,
            type: BottomNavigationBarType.fixed,
            elevation: 1,
            selectedFontSize: 0,
          ),
        ),
      ),
    );
  }

  Widget _buildBottomBarItem(IconData icon, String text) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            Positioned(
              child: Icon(
                icon,
                size: 34,
              ),
            ),
          ],
        ),
        Text(
          text,
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
