import 'package:flutter/material.dart';
import 'package:monster_hunter/core/theme/color/color_theme.dart';

class LightColor implements IColorTheme {
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
  final AppColors colors = AppColors();

  LightColor() {
    backgroundColor = colors.white;
    tabbarNormalColor = colors.greyBlue;
    tabbarSelectedColor = colors.darkblue;
    brightness = Brightness.light;
    colorScheme = const ColorScheme.light().copyWith(
      onPrimary: colors.thinAir,
      onSurface: colors.haciendaBlue,
    );
  }

  @override
  Color? iconColor;
}
