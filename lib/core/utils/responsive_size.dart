double responsivesize({required double fontSize, required double screenWidth}) {
  double scalfactor = getscalfactor(screenWidth);
  double responsiveSize = fontSize * scalfactor;
  double lowerLimit = fontSize * .6;
  double upperLimit = fontSize * 1.2;
  return responsiveSize.clamp(lowerLimit, upperLimit);
}

double getscalfactor(double width) {
  // PlatformDispatcher dispatcher = PlatformDispatcher.instance;
  // double physicalwidth = dispatcher.views.first.physicalSize.width;
  // double devicepixelratio = dispatcher.views.first.devicePixelRatio;
  // double width_of_screen = physicalwidth / devicepixelratio;
  if (width < 800) {
    return width / 550;
  } else if (width < 1300) {
    return width / 1000;
  } else {
    return width / 1800;
  }
}
