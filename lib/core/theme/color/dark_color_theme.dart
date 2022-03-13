import 'package:flutter/material.dart';
import 'package:monster_hunter/core/theme/color/color_theme.dart';

class DarkColor implements IColorTheme {
  @override
  late final Color? backgroundColor;

  @override
  late final Brightness? brightness;

  @override
  late final ColorScheme? colorScheme;

  @override
  late final Color? tabbarNormalColor;

  @override
  late final Color? tabbarSelectedColor;

  @override
  late final Color? iconColor;

  @override
  final AppColors colors = AppColors();

  DarkColor() {
    backgroundColor = colors.darkblue;
    tabbarNormalColor = colors.greyBlue;
    tabbarSelectedColor = colors.thinAir;
    iconColor = colors.white;
    brightness = Brightness.dark;
    colorScheme = const ColorScheme.dark().copyWith(
      onPrimary: colors.thinAir,
      onSurface: colors.treeSap,
    );
  }
}
