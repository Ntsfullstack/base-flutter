import 'package:get/get.dart';
import 'package:ints/base/base_controller.dart';



class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}

class HomeController extends BaseController {
  @override
  void onInit() {
    super.onInit();
    MyTranslations.init();
    logWhenDebug("CURRENT LANGUAGE : ", Get.locale!.languageCode.toString());
  }
}
