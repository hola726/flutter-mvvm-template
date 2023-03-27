import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_theme.dart';
import 'loading_indicator.dart';

class MainButton extends StatefulWidget {
  const MainButton({
    Key? key,
    this.width,
    this.height,
    required this.onPressed,
    this.text,
    this.textStyle,
    this.textColor,
    this.borderRadius,
    this.borderColor,
    this.color = AppTheme.primaryMainColor,
    this.disable,
    this.disableBackgroundColor,
    this.disableBorderColor,
    this.hoverColor,
    this.buttonWidget,
    this.isBoldText = true,
    this.isLoading,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? text;
  final void Function() onPressed;
  final BorderRadius? borderRadius;
  final Color? borderColor;
  final Color color;
  final TextStyle? textStyle;
  final Color? textColor;
  final bool? disable;
  final Color? hoverColor;
  final Widget? buttonWidget;
  final Color? disableBackgroundColor;
  final Color? disableBorderColor;
  final bool? isBoldText;
  final bool? isLoading;

  @override
  State createState() => _MainButton();
}

class _MainButton extends State<MainButton> {
  bool _isHover = false;

  TextStyle _boldText(Color color) {
    return AppTheme.buttonLarge.copyWith(
      color: color,
    );
  }

  TextStyle _smallText(Color color) {
    return AppTheme.buttonSmall.copyWith(
      color: color,
    );
  }

  Color _handleColor() {
    if (widget.disable == true) {
      return widget.disableBackgroundColor ??
          AppTheme.actionDisabledBackgroundColor;
    }

    if (_isHover == true || widget.isLoading == true) {
      return widget.hoverColor ?? widget.color;
    }

    return widget.color;
  }

  BoxBorder? _handleBorder() {
    if (widget.disable == true) {
      if (widget.disableBackgroundColor == null) return null;

      return Border.all(
        color: widget.disableBorderColor!,
        width: 1.w,
      );
    } else {
      if (widget.borderColor == null) return null;
      return Border.all(
        color: widget.borderColor!,
        width: 1.w,
      );
    }
  }

  TextStyle _handleStyle() {
    if (widget.disable == true) {
      if (widget.isBoldText == true) {
        return _boldText(AppTheme.actionDisabledColor);
      } else {
        return _smallText(AppTheme.actionDisabledColor);
      }
    } else {
      if (widget.textStyle != null) return widget.textStyle!;

      if (widget.isBoldText == true) {
        return _boldText(widget.textColor ?? AppTheme.primaryContrastColor);
      } else {
        return _smallText(widget.textColor ?? AppTheme.primaryContrastColor);
      }
    }
  }

  double _handleLoadingSize(
    double basicValue,
    double multiple,
  ) {
    double? standard = _getStandard();

    if (standard == null) return basicValue;

    return standard * multiple;
  }

  double? _getStandard() {
    if (widget.height == null && widget.width == null) return null;
    if (widget.height == null) return widget.width!;
    if (widget.width == null) return widget.height!;

    if (widget.height! < widget.width!) {
      return widget.height!;
    } else {
      return widget.width!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.isLoading == true
          ? null
          : () {
              setState(() {
                _isHover = false;
              });
              widget.disable == true ? null : widget.onPressed();
            },
      onTapCancel: () => setState(() {
        _isHover = false;
      }),
      onTapDown: (value) {
        setState(() {
          _isHover = true;
        });
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        width: widget.width ?? 328.w,
        height: widget.height ?? 50.h,
        decoration: BoxDecoration(
          color: _handleColor(),
          border: _handleBorder(),
          borderRadius:
              widget.borderRadius ?? const BorderRadius.all(Radius.circular(8)),
        ),
        child: Center(
          child: widget.isLoading == true
              ? LoadingIndicator(
                  height: _handleLoadingSize(20, 0.4),
                  width: _handleLoadingSize(20, 0.4),
                  strokeWidth: _handleLoadingSize(3, 0.15),
                  color: widget.disable == true ? null : Colors.white,
                )
              : widget.buttonWidget ??
                  Text(
                    widget.text ?? "",
                    textAlign: TextAlign.center,
                    style: _handleStyle(),
                  ),
        ),
      ),
    );
  }
}
