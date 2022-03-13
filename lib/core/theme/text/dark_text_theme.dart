import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:monster_hunter/core/theme/text/text_theme.dart';

class DarkTextTeheme implements ITextTheme {
  @override
  TextStyle? body1;

  @override
  String? fontFamily;

  @override
  TextStyle? headline6;

  @override
  final Color? primaryColor;

  DarkTextTeheme(this.primaryColor) {
    body1 = const TextStyle(fontSize: 16);
    headline6 = const TextStyle(fontSize: 20, fontWeight: FontWeight.w200);
    fontFamily = GoogleFonts.aclonica().fontFamily;
  }
}
