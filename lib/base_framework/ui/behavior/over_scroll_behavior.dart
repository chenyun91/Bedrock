import 'package:flutter/material.dart';

/// dislodge the any subclass of ScrollView's inkwell
/// 去除scroll view的 水印

class OverScrollBehavior extends ScrollBehavior {
  // @override
  // Widget buildOverscrollIndicator1(
  //     BuildContext context, Widget child, AxisDirection axisDirection) {
  //   switch (getPlatform(context)) {
  //     case TargetPlatform.iOS:
  //       return child;
  //     case TargetPlatform.fuchsia:
  //     case TargetPlatform.android:
  //       return GlowingOverscrollIndicator(
  //         child: child,
  //         //do not show head's inkwell
  //         showLeading: false,
  //         //do not show tail's inkwell
  //         showTrailing: false,
  //         axisDirection: axisDirection,
  //         color: Theme.of(context).accentColor,
  //       );
  //     case TargetPlatform.linux:
  //     case TargetPlatform.macOS:
  //     case TargetPlatform.windows:
  //   }
  //   return super.buildOverscrollIndicator(context, child, axisDirection);
  // }

  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
        return child;
      case TargetPlatform.fuchsia:
      case TargetPlatform.android:
        return GlowingOverscrollIndicator(
          child: child,
          //do not show head's inkwell
          showLeading: false,
          //do not show tail's inkwell
          showTrailing: false,
          axisDirection: details.direction,
          color: Theme.of(context).accentColor,
        );
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
    }
    return super.buildOverscrollIndicator(context, child, details);
  }
}
