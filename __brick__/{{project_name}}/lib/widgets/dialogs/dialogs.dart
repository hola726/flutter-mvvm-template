import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../app_theme.dart';
import '../../constants/assets_enum.dart';
import '../../constants/localization_enum.dart';
import '../common/main_button.dart';
import 'main_dialog.dart';

class Dialogs {
  static Future<void> openBasicDialog({
    required BuildContext context,
    String? text,
    void Function()? onPressedLeftButton,
    void Function()? onPressedRightButton,
    String? title,
    double? titleFontSize,
    String? rightButtonText,
    double? rightButtonWidth,
    TextStyle? rightButtonTextStyle,
    Color? rightButtonTextColor,
    Color? rightBorderColor,
    Color? rightButtonColor,
    Color? rightHoverColor,
    String? leftButtonText,
    Color? leftButtonTextColor,
    double? leftButtonWidth,
    TextStyle? leftButtonTextStyle,
    Color? leftBorderColor,
    Color? leftButtonColor,
    Color? leftHoverColor,
    Widget? dialogWidget,
    bool? disableLeftButton,
    bool? disableRightButton,
    bool? barrierDismissible,
    bool? isBoldRightButton,
    bool? isBoldLeftButton,
  }) async {
    await showDialog(
      context: context,
      barrierDismissible: barrierDismissible ?? true,
      builder: (context) => StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return WillPopScope(
            onWillPop: () async {
              if (barrierDismissible == false) {
                return false;
              }
              return true;
            },
            child: MainDialog(
              title: title,
              titleFontSize: titleFontSize ?? 18.sp,
              content: dialogWidget ??
                  Text(
                    text ?? "",
                    textAlign: TextAlign.center,
                    style: AppTheme.body2,
                  ),
              actions: [
                MainButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    if (onPressedLeftButton != null) onPressedLeftButton();
                  },
                  color: leftButtonColor ?? Colors.white,
                  text: leftButtonText ?? Localization.CANCEL.local(),
                  borderColor: leftBorderColor ??
                      AppTheme.primaryOutlinedRestingBackgroundColor,
                  textStyle: leftButtonTextStyle,
                  textColor: leftButtonTextColor ?? AppTheme.primaryMainColor,
                  hoverColor: leftHoverColor ??
                      AppTheme.primaryOutlinedHoverBackgroundColor,
                  width: leftButtonWidth ?? 136.w,
                  height: 42.h,
                  isBoldText: isBoldLeftButton,
                  disable: disableLeftButton,
                ),
                SizedBox(
                  width: 8.w,
                ),
                MainButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    if (onPressedRightButton != null) onPressedRightButton();
                  },
                  isBoldText: isBoldRightButton,
                  color: rightButtonColor ?? AppTheme.primaryMainColor,
                  text: rightButtonText ?? Localization.CONFIRM.local(),
                  borderColor: rightBorderColor,
                  textStyle: rightButtonTextStyle,
                  textColor: rightButtonTextColor,
                  hoverColor: rightHoverColor ??
                      AppTheme.primaryContainedHoverBackgroundColor,
                  width: rightButtonWidth ?? 136.w,
                  height: 42.h,
                  disable: disableRightButton,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  static Future<void> openConfirmDialog({
    required BuildContext context,
    String? text,
    void Function()? onPressedButton,
    String? title,
    double? titleFontSize,
    String? buttonText,
    double? buttonWidth,
    TextStyle? buttonTextStyle,
    Color? buttonTextColor,
    Color? borderColor,
    Color? buttonColor,
    Color? hoverColor,
    Widget? dialogWidget,
    bool? disableButton,
    bool? barrierDismissible,
    bool? isBoldTextButton,
  }) async {
    await showDialog(
      context: context,
      barrierDismissible: barrierDismissible ?? true,
      builder: (context) => StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return WillPopScope(
            onWillPop: () async {
              if (barrierDismissible == false) {
                return false;
              }
              return true;
            },
            child: MainDialog(
              title: title,
              titleFontSize: titleFontSize ?? 18.sp,
              content: dialogWidget ??
                  Text(
                    text ?? "",
                    textAlign: TextAlign.center,
                    style: AppTheme.body2,
                  ),
              actions: [
                MainButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    if (onPressedButton != null) onPressedButton();
                  },
                  isBoldText: isBoldTextButton,
                  color: buttonColor ?? AppTheme.primaryMainColor,
                  text: buttonText ?? Localization.CONFIRM.local(),
                  borderColor: borderColor,
                  textStyle: buttonTextStyle,
                  textColor: buttonTextColor,
                  hoverColor: hoverColor ??
                      AppTheme.primaryContainedHoverBackgroundColor,
                  width: buttonWidth ?? 280.w,
                  height: 42.h,
                  disable: disableButton,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  static Future<void> openRetryDialog({
    required BuildContext context,
  }) async {
    await Dialogs.openConfirmDialog(
      context: context,
      isBoldTextButton: true,
      dialogWidget: Column(
        children: [
          SizedBox(height: 24.h),
          SvgPicture.asset(
            Assets.EXCLAMATION_MARK.file,
          ),
          SizedBox(height: 24.h),
          Text(
            Localization.RETRY_PLZ.local(),
            style: AppTheme.body2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
