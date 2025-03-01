import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Hide soft keyboard
hideKeyboard() {
  return FocusManager.instance.primaryFocus?.unfocus();
}

/// Returns a string from Clipboard
Future<String> paste() async {
  ClipboardData? data = await Clipboard.getData('text/plain');
  return data?.text?.toString() ?? "";
}

/// returns Radius
Radius radiusCircular([double? radius]) {
  return Radius.circular(radius?.r ?? 12.r);
}

BorderRadius radius([double? radius]) {
  return BorderRadius.all(radiusCircular(radius?.r ?? 12.r));
}

ShapeBorder shapeBorder([double? borderRadius]) {
  return RoundedRectangleBorder(borderRadius: radius(borderRadius?.r ?? 12.r));
}

/// returns custom Radius on each side
BorderRadius radiusOnly({
  double? topRight,
  double? topLeft,
  double? bottomRight,
  double? bottomLeft,
}) {
  return BorderRadius.only(
    topRight: radiusCircular(topRight ?? 0),
    topLeft: radiusCircular(topLeft ?? 0),
    bottomRight: radiusCircular(bottomRight ?? 0),
    bottomLeft: radiusCircular(bottomLeft ?? 0),
  );
}
