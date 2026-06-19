import 'package:flutter/material.dart';

extension ResponsiveFontExtension on BuildContext {
  double responsiveFont(double fontSize) {
    final width = MediaQuery.sizeOf(this).width;

    double scaleFactor;

    if (width < 800) {
      scaleFactor = width / 550;
    } else if (width < 1300) {
      scaleFactor = width / 1000;
    } else {
      scaleFactor = width / 1800;
    }

    final responsiveSize = fontSize * scaleFactor;

    return responsiveSize.clamp(fontSize * .6, fontSize * 1.2);
  }
}
