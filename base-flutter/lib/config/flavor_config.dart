import 'package:flutter/services.dart';

/// Contains the hard-coded settings per flavor.
class FlavorSettings {
  final String apiBaseUrl;
  // TODO Add any additional flavor-specific settings here.

  FlavorSettings.dev()
      : apiBaseUrl = 'https://dev.xxx';

  FlavorSettings.stg()
      : apiBaseUrl = 'https://stg.xxx';

  FlavorSettings.prod()
      : apiBaseUrl = 'https://prod.xxx';
}