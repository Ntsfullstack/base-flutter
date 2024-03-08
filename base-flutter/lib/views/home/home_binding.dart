import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ints/base/base_controller.dart';



class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}

class HomeController extends BaseController {
  void changeTheme() {
    if (Get.isDarkMode) {
      AppThemes().changeThemeMode(ThemeMode.light);
    } else {
      AppThemes().changeThemeMode(ThemeMode.dark);
    }
  }

  @override
  void onInit() {
    super.onInit();
    MyTranslations.init();
    logWhenDebug("CURRENT LANGUAGE : ", Get.locale!.languageCode.toString());
  }
}
