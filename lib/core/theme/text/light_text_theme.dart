import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:monster_hunter/core/theme/text/text_theme.dart';

class LightTextTeheme implements ITextTheme {
  @override
  TextStyle? body1;

  @override
  String? fontFamily;

  @override
  TextStyle? headline6;

  @override
  final Color? primaryColor;

  LightTextTeheme(this.primaryColor) {
    body1 = const TextStyle(fontSize: 17);
    headline6 = const TextStyle(fontSize: 21, fontWeight: FontWeight.bold);
    fontFamily = GoogleFonts.adamina().fontFamily;
  }
}
