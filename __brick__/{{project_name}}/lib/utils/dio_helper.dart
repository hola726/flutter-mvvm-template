import 'package:dio/dio.dart';

import '../constants/constants.dart';

class DioHelper {
  static BaseOptions getOptions() {
    return BaseOptions(
      baseUrl: kBaseServerUrl,
      connectTimeout: const Duration(milliseconds: kTimeoutMillisecond),
      receiveTimeout: const Duration(milliseconds: kTimeoutMillisecond),
      sendTimeout: const Duration(milliseconds: kTimeoutMillisecond),
    );
  }
}
