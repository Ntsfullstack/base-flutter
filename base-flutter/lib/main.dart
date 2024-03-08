import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ints/config/flavor_config.dart';
import 'package:oktoast/oktoast.dart';

import 'x_res/my_res.dart';

String? baseURL;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  final settings = await _getFlavorSettings();
  baseURL = settings.apiBaseUrl;
  runApp(MyApp());
}

Future<FlavorSettings> _getFlavorSettings() async {
  String? flavor =
      await const MethodChannel('flavor').invokeMethod<String>('getFlavor');

  print('STARTED WITH FLAVOR $flavor');

  if (flavor == 'dev') {
    return FlavorSettings.dev();
  } else if (flavor == 'stg') {
    return FlavorSettings.stg();
  } else if (flavor == 'prod') {
    return FlavorSettings.prod();
  } else {
    throw Exception("Unknown flavor: $flavor");
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.focusScope?.unfocus(),
      child: OKToast(
        child: ScreenUtilInit(
          useInheritedMediaQuery: true,
          designSize: Size(390, 844),
          builder: (BuildContext context, Widget? child) {
            return GetMaterialApp(
              theme: AppThemes.theme(),
              darkTheme: AppThemes.darkTheme(),
              themeMode: AppThemes().init(),
              locale: MyTranslations.locale,
              fallbackLocale: MyTranslations.fallbackLocale,
              translations: MyTranslations(),
              initialRoute: RouterName.login,
              debugShowCheckedModeBanner: false,
              getPages: Pages.pages(),
            );
          },
        ),
      ),
    );
  }
}
