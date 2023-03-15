import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

class LocalizationHelper {
  static Widget setLocalization(Widget child) {
    return EasyLocalization(
      supportedLocales: const [
        Locale('ko', 'KR'),
      ],
      path: 'assets/translations',
      child: child,
    );
  }
}
