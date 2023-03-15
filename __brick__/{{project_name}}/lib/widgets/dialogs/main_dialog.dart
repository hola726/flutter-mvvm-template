import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_theme.dart';

class MainDialog extends StatelessWidget {
  const MainDialog({
    Key? key,
    required this.content,
    required this.actions,
    this.contentBottomPadding,
    this.titleFontSize,
    this.title,
  }) : super(key: key);

  final double? contentBottomPadding;
  final String? title;
  final Widget content;
  final List<Widget> actions;
  final double? titleFontSize;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(
        horizontal: 24.w,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 16.h,
          horizontal: 16.w,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (title != null)
              Column(
                children: [
                  Text(
                    title!,
                    textAlign: TextAlign.center,
                    style: AppTheme.headline6,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            content,
            SizedBox(
              height: contentBottomPadding ?? 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: actions,
            ),
          ],
        ),
      ),
    );
  }
}
