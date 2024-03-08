import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'failure.dart';

class HttpErrorUtil {
  // general methods:-----------------------------------------------------------
  static String handleError(dynamic error) {
    String errorDescription = "";
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.cancel:
          errorDescription = 'err.http.cancel'.tr;
          break;
        case DioExceptionType.connectionError:
          errorDescription = 'err.http.connectTimeout'.tr;
          break;
        case DioExceptionType.connectionTimeout:
          errorDescription = 'err.http.other'.tr;
          break;
        case DioExceptionType.receiveTimeout:
          errorDescription = 'err.http.receiveTimeout'.tr;
          break;
        case DioExceptionType.badResponse:
          errorDescription = '${'err.http.response'.tr}';
          break;
        case DioExceptionType.sendTimeout:
          errorDescription = 'err.http.sendTimeout'.tr;
          break;
        case DioExceptionType.badCertificate:
          errorDescription = 'err.http.sendTimeout'.tr;
          break;
        case DioExceptionType.unknown:
          errorDescription = 'err.http.sendTimeout'.tr;
          break;
      }
    } else if (error is NetworkException) {
      errorDescription = 'err.http.network'.tr;
    } else {
      errorDescription = 'err.http.default'.tr;
    }
    return errorDescription;
  }
}
