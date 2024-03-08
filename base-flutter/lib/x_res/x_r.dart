
import 'package:get/get.dart';

class XR {
  _String string = _String();
  _AssetsImage assetsImage = _AssetsImage();
  _SVGImage svgImage = _SVGImage();
}

class _AssetsImage {
  static const String images = 'assets/images/';
  String img_logo = images + 'img_logo.png';

}
class _SVGImage {
  static const String svg = 'assets/svg/';

  String ic_fact_check = svg + 'ic_fact_check.svg';
  String ic_favorite = svg + 'ic_favorite.svg';
  String ic_format_list = svg + 'ic_format_list.svg';
  String ic_home = svg + 'ic_home.svg';
  String ic_local_hospital = svg + 'ic_local_hospital.svg';

}
class _String {
  String home = 'home'.tr;
  String profile_physical = 'profile_physical'.tr;
  String self_check = 'self_check'.tr;
  String history = 'history'.tr;
  String clinic_search = 'clinic_search'.tr;

}
