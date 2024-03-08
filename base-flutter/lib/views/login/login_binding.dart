import 'package:get/get.dart';
import 'package:ints/views/bottomNavigationbar/btm_navigation_bar.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}

class LoginController extends GetxController {
  // Method to simulate login process and navigate to the next screen
  void login() {
    // Simulate a delay (you would typically make a network request here)
    Future.delayed(Duration(seconds: 2), () {
      // Navigate to the next screen (replace with the desired screen)
      Get.to(() => BottomBarScreen());
    });
  }
}
