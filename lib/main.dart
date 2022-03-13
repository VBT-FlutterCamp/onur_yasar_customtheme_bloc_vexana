import 'package:flutter/material.dart';
import 'package:monster_hunter/core/theme/app_theme.dart';
import 'package:monster_hunter/home/view/monster_hunter_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeManager.createTheme(AppThemeDark()),
      home: const MonsterHunter(),
    );
  }
}
