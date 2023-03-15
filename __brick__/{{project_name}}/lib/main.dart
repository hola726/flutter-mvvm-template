import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_boilerplate/routes/router.dart';
import 'package:flutter_mvvm_boilerplate/services/local_service.dart';
import 'package:flutter_mvvm_boilerplate/services/remote_service.dart';
import 'package:flutter_mvvm_boilerplate/utils/dio_helper.dart';
import 'package:flutter_mvvm_boilerplate/utils/localization_helper.dart';
import 'package:flutter_mvvm_boilerplate/utils/provider_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constants/constants.dart';

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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(kRatioBaseWidth, kRatioBaseHeight),
      builder: (_, __) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          routerConfig: router,
          title: 'Todo',
        );
      },
    );
  }
}
