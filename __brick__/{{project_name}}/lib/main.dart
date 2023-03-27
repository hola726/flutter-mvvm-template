import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'my_app.dart';
import 'services/local_service.dart';
import 'services/remote_service.dart';
import 'utils/dio_helper.dart';
import 'utils/localization_helper.dart';
import 'utils/provider_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await LocalService().setLocalStorage();
  RemoteService.init(Dio(DioHelper.getOptions()));
  runApp(LocalizationHelper.setLocalization(
    ProviderHelper.setProvider(
      const MyApp(),
    ),
  ));
}
