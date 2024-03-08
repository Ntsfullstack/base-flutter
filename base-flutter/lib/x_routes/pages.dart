import 'package:get/get.dart';
import 'package:ints/views/bottomNavigationbar/bottom_bar_binding.dart';
import 'package:ints/views/bottomNavigationbar/btm_navigation_bar.dart';
import 'package:ints/views/home/home_binding.dart';
import 'package:ints/views/login/login_binding.dart';
import 'package:ints/views/login/loginscreen.dart';
import 'package:ints/views/portfolio/portfolio_binding.dart';
import 'package:ints/views/portfolio/portfolio_screen.dart';
import 'package:ints/views/setting/setting_binding.dart';
import 'package:ints/views/setting/setting_screen.dart';
import 'package:ints/views/sort_ticket/sortTicket_screen.dart';
import 'package:ints/views/test/test_binding.dart';
import 'package:ints/views/ticket/ticket_binding.dart';
import '../views/home/home_screen.dart';
import '../views/test/test_screen.dart';
import '../views/ticket/ticket_screen.dart';
import 'router_name.dart';

class Pages {
  static List<GetPage> pages() {
    return [
      GetPage(
          name: RouterName.main_home,
          page: () => HomeScreen(),
          binding: HomeBinding()),
      GetPage(
          name: RouterName.test,
          page: () => TestScreen(),
          binding: TestBinding()),
      GetPage(
          name: RouterName.portfolio,
          page: () => PortfolioScreen(),
          binding: PortfolioBinding()),
      GetPage(
        name: RouterName.ticket,
        page: () => TicketPages(),
        binding: TicketBindings(ticketType: TicketType.bike),
      ),

      GetPage(
        name: RouterName.ticket,
        page: () => TicketPages(),
        binding: TicketBindings(ticketType: TicketType.car),
      ),
// Use the TicketBindings instead

      GetPage(
          name: RouterName.setting,
          page: () => setting_page(),
          binding: HomeBinding()),
      GetPage(
          name: RouterName.sort_ticket,
          page: () => sort(),
          binding: HomeBinding()),
      GetPage(
          name: RouterName.bottomNavigationbar,
          page: () => BottomBarScreen(),
          binding: BottomBarBinding()),
      GetPage(
          name: RouterName.setting,
          page: () => setting_page(),
          binding: ContactListBinding()),
      GetPage(
          name: RouterName.setting,
          page: () => setting_page(),
          binding: SettingListBinding()),
      GetPage(
          name: RouterName.login,
          page: () => LoginScreen(),
          binding: LoginBinding()),
    ];
  }
}
