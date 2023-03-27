import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_theme.dart';
import '../constants/localization_enum.dart';
import '../widgets/common/loading_indicator.dart';
import '../widgets/common/main_button.dart';

class PageHelper extends StatefulWidget {
  const PageHelper({
    Key? key,
    required this.isLoading,
    this.isEmpty,
    this.isNetworkDisconnect,
    this.text,
    this.refreshButton,
    this.refreshOnPressed,
  }) : super(key: key);
  final bool isLoading;
  final String? text;
  final bool? refreshButton;
  final bool? isEmpty;
  final bool? isNetworkDisconnect;
  final void Function()? refreshOnPressed;

  @override
  State createState() => _PageHelperState();
}

class _PageHelperState extends State<PageHelper> {
  String _buildText() {
    if (widget.isNetworkDisconnect == true) {
      return Localization.BAD_CONNECTION.local();
    }
    if (widget.isEmpty == true) return Localization.EMPTY_DATA.local();

    return widget.text!;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isLoading == true) {
      return const LoadingIndicator();
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _buildText(),
              textAlign: TextAlign.center,
              style: AppTheme.subtitle2Bold.copyWith(
                color: AppTheme.actionDisabledColor,
              ),
            ),
            if (widget.refreshButton != false)
              Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  MainButton(
                    onPressed: widget.refreshOnPressed ?? () {},
                    height: 40.h,
                    width: 85.w,
                    borderColor: Colors.black,
                    borderRadius: BorderRadius.circular(4),
                    text: Localization.REFRESH.local(),
                    textColor: AppTheme.textSecondary,
                    color: Colors.white,
                    hoverColor: AppTheme.actionHoverColor,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
