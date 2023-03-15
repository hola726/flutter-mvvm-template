import 'package:flutter/material.dart';

import '../../app_theme.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    Key? key,
    this.color,
    this.height,
    this.width,
    this.strokeWidth,
  }) : super(key: key);

  final Color? color;
  final double? height;
  final double? width;
  final double? strokeWidth;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width ?? 20,
        height: height ?? 20,
        child: CircularProgressIndicator(
          strokeWidth: strokeWidth ?? 3,
          valueColor:
              AlwaysStoppedAnimation<Color>(color ?? AppTheme.primaryMainColor),
        ),
      ),
    );
  }
}
