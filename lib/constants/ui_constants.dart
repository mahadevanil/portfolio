import 'package:flutter/material.dart';

import '../style/colors.dart';
import 'dimensions.dart';

class UiConstants {
  //*---------------------------------------------------------------- (Transparent_Button)
  TextButton transparentButton(
      {required Widget child,
      bool apiCalling = false,
      required void Function()? onPressed,
      MaterialTapTargetSize? tapTargetSize,
      WidgetStateProperty<Size?>? minimumSize,
      WidgetStateProperty<EdgeInsetsGeometry?>? padding,
      WidgetStateProperty<Color?> overlayColor =
          const WidgetStatePropertyAll(AppColors.trans)}) {
    return TextButton(
        style: ButtonStyle(
            padding: padding,
            minimumSize: minimumSize,
            overlayColor: overlayColor,
            tapTargetSize: tapTargetSize),
        onPressed: onPressed,
        child: child);
  }

  //*---------------------------------------------------------------- (round button)
  InkWell roundButton({
    required Widget child,
    required void Function()? onTap,
  }) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      splashColor: AppColors.primaryColor,
      highlightColor: AppColors.trans,
      borderRadius: KDimension().kRadius100,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: KDimension().kRadius100,
        ),
        child: child,
      ),
    );
  }
}
