import 'package:flutter/material.dart';
import 'package:ints/config/flavor_config.dart';
import 'package:ints/main.dart';

/// CONFIGS DATA
class MyConfig {
  /// APP CONFIG
  static final String APP_NAME = "-- FLUTTER BASE APP --";
  static final String BASE_URL = baseURL ?? "";
  static final String TOKEN_STRING_KEY = 'TOKEN_STRING_KEY';
  static final String EMAIL_KEY = 'EMAIL_KEY';
  static final String FCM_TOKEN_KEY = 'EMAIL_KEY';
  static final String ACCESS_TOKEN_KEY = 'ACCESS_TOKEN_KEY';
  static final String REFRESH_TOKEN_KEY = 'REFRESH_TOKEN_KEY';

  /// CUSTOM CONFIG APP
  static final String LANGUAGE = 'LANGUAGE';

  // receiveTimeout
  static const int RECEIVE_TIMEOUT = 5000;

  // connectTimeout
  static const int CONNECTION_TIMEOUT = 15000;
}

/// SPACINGS DATA
class MySpace {
  /// Padding
  static final double paddingZero = 0.0;
  static final double paddingXS = 2.0;
  static final double paddingS = 4.0;
  static final double paddingM = 8.0;
  static final double paddingL = 16.0;
  static final double paddingXL = 32.0;
  static final double paddingXXL = 36.0;

  /// Margin
  static final double marginZero = 0.0;
  static final double marginXS = 2.0;
  static final double marginS = 4.0;
  static final double marginM = 8.0;
  static final double marginL = 16.0;
  static final double marginXL = 32.0;

  /// Spacing
  static final double spaceXS = 2.0;
  static final double spaceS = 4.0;
  static final double spaceM = 8.0;
  static final double spaceL = 16.0;
  static final double spaceXL = 32.0;
}

/// COLORS DATA
class MyColor {
  /// Common Colors
  static final PRIMARY_COLOR =  Color(0xFF250048);
  static final MISTY_COLOR =  Color(0xFFE0E0E0);
  static final Color LIGHT_BACKGROUND_COLOR = Color(0xFFF9F9F9);
  static final ACCENT_COLOR =  Color(0xFF9B51E0);
  static final PRIMARY_VARIANT =  Color(0xFF9B51E0);
  static final PRIMARY_VARIANT_LIGHT =  Color(0xFFE8F5E9);
  static final PRIMARY_SWATCH =  Color(0xFF3681EC);

  static final ICON_COLOR = Colors.white;
  static final TEXT_COLOR =  Color(0xFF000000);
  static final BUTTON_COLOR =  PRIMARY_COLOR;
  static final TEXT_BUTTON_COLOR =  Colors.white;

  static final PRIMARY_DARK_COLOR =  Color(0xFF250048);
  static final Color DARK_BACKGROUND_COLOR = Color(0xFF000000);
  static final ICON_COLOR_DARK = Colors.white;
  static final TEXT_COLOR_DARK =  Color(0xFFffffff);
  static final BUTTON_COLOR_DARK =  PRIMARY_DARK_COLOR;
  static final TEXT_BUTTON_COLOR_DARK =  Colors.black;

  static final primary =  Color(0xFF6AC2C8);
  static final text_3 =  Color(0xFFD15278);
  static final darkgreen =  Color(0xFF07454E);
  static final Deepgreen =  Color(0xFF106D79);
  static final Purple =  Color(0xFF9669BA);
  static final Gradient_2 = [
    Color(0xFFE5D6F3),
    Color(0xFFA797D4),
  ];
  static final Gradient_1 = [
    Color(0xFFFCE5DF),
    Color(0xFFF3BDC6),
  ];
  static final yellow =  Color(0xFFF9A825);
  static final success =  Color(0xFF46CC94);
  static final errorFill =  Color(0xFFFEF6F7);
  static final error =  Color(0xFFF75860);
  static final titleBackground =  Color(0xFFF3F3F3);
  static final background =  Color(0xFFF6F6F6);
  static final border =  Color(0xFFC7C7C7);
  static final disabled =  Color(0xFFCCCCCC);
  static final placeholder =  Color(0xFFBBBBBB);
  static final primary_50 =  Color(0xFFB4E1E3);
  static final primary_10 =  Color(0xFFE8F4F6);
  static final primary_5 =  Color(0xFFF6FBFB);
  static final tertiary =  Color(0xFFFC6A96);
  static final secondary =  Color(0xFF1B95A5);
  static final text_2 =  Color(0xFF232363);
  static final text_1 =  Color(0xFF2C2C2C);
  static final black_80 =  Color(0xFF000000).withOpacity(0.8);
  static final black =  Color(0xFF000000);
  static final white =  Color(0xFFFFFFFF);

}