import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ints/base/base_view_view_model.dart';
import 'package:ints/views/home/home_binding.dart';
import 'package:ints/x_res/my_res.dart';
import 'package:ints/x_routes/routes.dart';
import 'package:ints/x_utils/widgets/my_text_form_field.dart';

class HomeScreen extends BaseView<HomeController> {
  @override
  Widget vBuilder() => Scaffold(
        appBar: AppBar(
          title: Text("XR().string.my_flutter}"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (value) {},
          items: [
            BottomNavigationBarItem(
              label: XR().string.home,
              icon: SvgPicture.asset(XR().svgImage.ic_home),
            ),
            BottomNavigationBarItem(
              label: XR().string.profile_physical,
              icon: SvgPicture.asset(XR().svgImage.ic_favorite),
            ),
            BottomNavigationBarItem(
              label: XR().string.self_check,
              icon: SvgPicture.asset(XR().svgImage.ic_fact_check),
            ),
            BottomNavigationBarItem(
              label: XR().string.history,
              icon: SvgPicture.asset(XR().svgImage.ic_format_list),
            ),
            BottomNavigationBarItem(
              label: XR().string.clinic_search,
              icon: SvgPicture.asset(XR().svgImage.ic_local_hospital),
            ),
          ],
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: Text("{XR().string.change_theme}"),
                  onPressed: controller.changeTheme,
                ),
                Text("{XR().string.saya}"),
                TextButton(
                  child: Text("{XR().string.goto_test}"),
                  onPressed: () async {
                    Get.toNamed(RouterName.test);
                  },
                ),
                MyTextFormField(
                  obscureText: true,
                  labelText: "Testing",
                  hint: "Testing...",
                )
              ],
            ),
          ),
        ),
      );
}
