import 'package:flutter/material.dart';

class Tabbar {
  Icon? icon;
  Tabbar(
    this.icon,
  );
}

List<Tabbar> icons = [
  Tabbar(
    const Icon(Icons.home_filled),
  ),
  Tabbar(
    const Icon(Icons.details_outlined),
  ),
  Tabbar(
    const Icon(Icons.search_off),
  ),
  Tabbar(
    const Icon(Icons.person),
  ),
];
