import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ints/views/list_ticket/list_ticket_screen.dart';
import 'package:ints/views/setting/setting_screen.dart';
import 'package:ints/views/ticket/ticket_screen.dart';

class BottomBarController extends GetxController {
  late PageController pageController;
  final selectedIndex = 0.obs;

  final pages = [
    TicketPages(),
    TicketList(),
    setting_page(),
  ];

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  void onItemTapped(int index) {
    pageController.jumpToPage(index);
    selectedIndex.value = index;
  }
}
