import 'package:flutter/cupertino.dart';
import 'package:smooth_corner_updated/smooth_corner.dart';

class AppStyles {
  static const double defaultPadding = 8.0;
  static const double borderRadius = 24.0;
  static const double smoothness = 0.6;

  static ShapeDecoration smoothBorderDecoration({
    Color? color,
    BorderSide? borderSide,
    double radius = borderRadius,
    List<BoxShadow>? shadows,
  }) {
    return ShapeDecoration(
      shape: SmoothRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
        smoothness: smoothness,
        side: borderSide ??
            BorderSide(
              color: CupertinoColors.systemGrey3.darkColor,
              width: 1.0,
            ),
      ),
      color: color,
      shadows: shadows,
    );
  }
}
