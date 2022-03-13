import 'package:flutter/material.dart';

abstract class IColorTheme {
  AppColors get colors;
  Color? backgroundColor;
  Color? tabbarNormalColor;
  Color? tabbarSelectedColor;
  Color? iconColor;

  Brightness? brightness;

  ColorScheme? colorScheme;
}

class AppColors {
  final haciendaBlue = const Color(0xff0087A8);
  final thinAir = const Color(0xffC7FBFF);
  final white = const Color(0xffffffff);
  final treeSap = const Color(0xffd47516);
  final lightGrey = const Color(0xffdbe2ed);
  final greyBlue = const Color(0xff748a9b);
  final darkblue = const Color(0xff050011);
}
