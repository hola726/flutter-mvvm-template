import 'dart:math';

import 'package:flutter/cupertino.dart';

class Contour extends StatelessWidget {
  const Contour({
    Key? key,
    required this.color,
    required this.height,
    this.width,
    this.padding,
  }) : super(key: key);

  final Color? color;
  final double height;
  final double? width;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 0),
      child: Transform.rotate(
        angle: pi,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
          ),
        ),
      ),
    );
  }
}
