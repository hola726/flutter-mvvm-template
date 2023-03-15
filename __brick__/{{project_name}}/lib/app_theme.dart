import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static const pretendard = 'Pretendard';

  // HeadLine
  static final headline1 = TextStyle(
    fontFamily: pretendard,
    fontSize: 96.sp,
    letterSpacing: -1.5.sp,
    fontWeight: FontWeight.w300,
  );
  static final headline2 = TextStyle(
    fontFamily: pretendard,
    fontSize: 60.sp,
    letterSpacing: -0.5.sp,
    fontWeight: FontWeight.w300,
  );
  static final headline3 = TextStyle(
    fontFamily: pretendard,
    fontSize: 48.sp,
    letterSpacing: 0.sp,
    fontWeight: FontWeight.w400,
  );
  static final headline4 = TextStyle(
    fontFamily: pretendard,
    fontSize: 34.sp,
    letterSpacing: 0.25.sp,
    fontWeight: FontWeight.w400,
  );

  static final headline5 = TextStyle(
    fontFamily: pretendard,
    fontSize: 24.sp,
    letterSpacing: 0.sp,
    fontWeight: FontWeight.w400,
  );

  static final headline6 = TextStyle(
    fontFamily: pretendard,
    fontSize: 20.sp,
    letterSpacing: 0.15.sp,
    fontWeight: FontWeight.w700,
  );

  // Subtitle
  static final subtitle1 = TextStyle(
    fontFamily: pretendard,
    fontSize: 16.sp,
    letterSpacing: 0.15.sp,
    fontWeight: FontWeight.w400,
  );
  static final subtitle1Bold = TextStyle(
    fontFamily: pretendard,
    fontSize: 16.sp,
    letterSpacing: 0.15.sp,
    fontWeight: FontWeight.w700,
  );
  static final subtitle2 = TextStyle(
    fontFamily: pretendard,
    fontSize: 14.sp,
    letterSpacing: 0.1.sp,
    fontWeight: FontWeight.w400,
  );
  static final subtitle2Bold = TextStyle(
    fontFamily: pretendard,
    fontSize: 14.sp,
    letterSpacing: 0.1.sp,
    fontWeight: FontWeight.w700,
  );

  // Body
  static final body1 = TextStyle(
    fontFamily: pretendard,
    fontSize: 16.sp,
    letterSpacing: 0.15.sp,
    fontWeight: FontWeight.w400,
  );
  static final body2 = TextStyle(
    fontFamily: pretendard,
    fontSize: 14.sp,
    letterSpacing: 0.15.sp,
    fontWeight: FontWeight.w400,
  );

  // Components
  static final buttonLarge = TextStyle(
    fontFamily: pretendard,
    fontSize: 15.sp,
    letterSpacing: 0.46.sp,
    fontWeight: FontWeight.w500,
  );
  static final buttonMedium = TextStyle(
    fontFamily: pretendard,
    fontSize: 14.sp,
    letterSpacing: 0.4.sp,
    fontWeight: FontWeight.w500,
  );
  static final buttonSmall = TextStyle(
    fontFamily: pretendard,
    fontSize: 13.sp,
    letterSpacing: 0.46.sp,
    fontWeight: FontWeight.w500,
  );
  static final caption = TextStyle(
    fontFamily: pretendard,
    fontSize: 12.sp,
    letterSpacing: 0.4.sp,
    fontWeight: FontWeight.w400,
  );
  static final overline = TextStyle(
    fontFamily: pretendard,
    fontSize: 12.sp,
    letterSpacing: 1.sp,
    fontWeight: FontWeight.w400,
  );
  static final avatarLetter = TextStyle(
    fontFamily: pretendard,
    fontSize: 20.sp,
    letterSpacing: 0.14.sp,
    fontWeight: FontWeight.w400,
  );
  static final inputLabel = TextStyle(
    fontFamily: pretendard,
    fontSize: 12.sp,
    letterSpacing: 0.46.sp,
    fontWeight: FontWeight.w400,
  );
  static final helperText = TextStyle(
    fontFamily: pretendard,
    fontSize: 12.sp,
    letterSpacing: 0.4.sp,
    fontWeight: FontWeight.w400,
  );
  static final inputText = TextStyle(
    fontFamily: pretendard,
    fontSize: 16.sp,
    letterSpacing: 0.15.sp,
    fontWeight: FontWeight.w400,
  );
  static final inputTextSmall = TextStyle(
    fontFamily: pretendard,
    fontSize: 14.sp,
    letterSpacing: 0.15.sp,
    fontWeight: FontWeight.w400,
  );
  static final tooltip = TextStyle(
    fontFamily: pretendard,
    fontSize: 10.sp,
    letterSpacing: 0.sp,
    fontWeight: FontWeight.w500,
  );

  // Primary
  static const primaryMainColor = Color(0xff2196F3);
  static const primaryLightColor = Color(0xff92CCF9);
  static const primaryDarkColor = Color(0xff0B79D0);
  static const primaryContrastColor = Color(0xffFFFFFF);
  static const primaryContainedHoverBackgroundColor = Color(0xff186FB4);
  static const primaryOutlinedHoverBackgroundColor = Color(0xffEDF7FE);
  static const primaryOutlinedRestingBackgroundColor = Color(0xff90CBF9);
  static const primaryBackground = Color(0xffEEF7FE);

  // Text
  static const textPrimaryColor = Color(0xff13131A);
  static const textSecondary = Color(0xff717176);
  static const textTertiary = Color(0xff0D3C61);
  static const textDisabled = Color(0xffC2C2C3);
  static const textNavigation = Color(0xff9E9E9E);

  // Action
  static const actionActiveColor = Color(0xff757575);
  static const actionHoverColor = Color(0xffF6F6F6);
  static const actionSelectedColor = Color(0xffE7E7E8);
  static const actionDisabledColor = Color(0xffC2C2C3);
  static const actionDisabledBackgroundColor = Color(0xffE7E7E8);
  static const actionHoverNavigation = Color(0xffF6F8FC);
  static const actionSelectedNavigation = Color(0xffEDF1F9);

  // Other
  static const otherDivider = Color(0xffE3E3E4);
  static const otherNavigation = Color(0xff9E9E9E);
  static const otherOutlineBorder = Color(0xffBDBDBF);
  static const otherStandardInputLine = Color(0xffFFFFFF);
  static const otherBackdropOverlay = Color(0xffA1A1A3);
  static const otherFilledInputBackground = Color(0xffF6F6F6);

  // Common
  static const commonBlack = Color(0xff13131A);
  static const commonWhite = Color(0xffFFFFFF);

  // Background
  static const backgroundWhite = Color(0xffFFFFFF);
  static const backgroundGrey = Color(0xffFAFAFA);

  // Error
  static const errorMainColor = Color(0xffFA4B4B);
  static const errorLightColor = Color(0xffF88078);
  static const errorDarkColor = Color(0xffD23F3F);
  static const errorContrastColor = Color(0xffFFFFFF);
  static const errorContainedHoverBackgroundColor = Color(0xffB93838);
  static const errorOutlinedHoverBackgroundColor = Color(0xffFFF1F1);
  static const errorOutlinedRestingBorderColor = Color(0xffFDA5A5);
  static const errorContentColor = Color(0xff641E1E);
  static const errorBackgroundColor = Color(0xffFEEDED);

  // Info
  static const infoMainColor = Color(0xff3B57E9);
  static const infoLightColor = Color(0xff7689F0);
  static const infoDarkColor = Color(0xff3247B4);
  static const infoContrastColor = Color(0xffFFFFFF);
  static const infoContainedHoverBackgroundColor = Color(0xff2C40AC);
  static const infoOutlinedHoverBackgroundColor = Color(0xffEFF2FD);
  static const infoOutlinedRestingBorderColor = Color(0xff9DABF4);
  static const infoContentColor = Color(0xff18235D);
  static const infoBackgroundColor = Color(0xffEBEEFD);

  // Grey
  static const grey100 = Color(0xffF5F5F5);
  static const grey200 = Color(0xffEEEEEE);
  static const grey300 = Color(0xffE0E0E0);
  static const grey400 = Color(0xffBDBDBD);
  static const grey500 = Color(0xff9E9E9E);
  static const grey600 = Color(0xff757575);
  static const grey800 = Color(0xff424242);
}
