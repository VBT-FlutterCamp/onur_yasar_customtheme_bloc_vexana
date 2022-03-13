import 'package:flutter/material.dart';
import 'package:monster_hunter/core/theme/color/color_theme.dart';
import 'package:monster_hunter/core/theme/color/dark_color_theme.dart';
import 'package:monster_hunter/core/theme/color/light_color_theme.dart';
import 'package:monster_hunter/core/theme/text/dark_text_theme.dart';
import 'package:monster_hunter/core/theme/text/light_text_theme.dart';
import 'package:monster_hunter/core/theme/text/text_theme.dart';

abstract class ITheme {
  ITextTheme get textTheme;
  IColorTheme get colorTheme;
}

class AppThemeLight extends ITheme {
  @override
  IColorTheme get colorTheme => LightColor();

  @override
  ITextTheme get textTheme => LightTextTeheme(colorTheme.colors.darkblue);
}

class AppThemeDark extends ITheme {
  @override
  IColorTheme get colorTheme => DarkColor();

  @override
  ITextTheme get textTheme => DarkTextTeheme(colorTheme.colors.white);
}

abstract class ThemeManager {
  static ThemeData createTheme(ITheme theme) {
    return ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(theme.colorTheme.colors.treeSap),
        )),
        fontFamily: theme.textTheme.fontFamily,
        scaffoldBackgroundColor: theme.colorTheme.backgroundColor,
        textTheme: TextTheme(
          headline6: theme.textTheme.headline6,
          bodyText1: theme.textTheme.body1,
        ).apply(bodyColor: theme.textTheme.primaryColor),
        tabBarTheme: TabBarTheme(
          indicator: const BoxDecoration(),
          labelColor: theme.colorTheme.tabbarSelectedColor,
          unselectedLabelColor: theme.colorTheme.tabbarNormalColor,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          foregroundColor: theme.colorTheme.colors.thinAir,
          backgroundColor: theme.colorTheme.colors.treeSap,
        ),
        iconTheme: IconThemeData(
          color: theme.colorTheme.iconColor,
          size: 33,
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
        ),
        colorScheme: theme.colorTheme.colorScheme,
        cardColor: theme.colorTheme.tabbarNormalColor);
  }
}
