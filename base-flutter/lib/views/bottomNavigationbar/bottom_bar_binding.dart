import 'package:get/get.dart';
import 'package:ints/views/bottomNavigationbar/bottomNavigationBar_controller.dart';

class BottomBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomBarController>(() => BottomBarController());
  }
}
