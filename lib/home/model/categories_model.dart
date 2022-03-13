import 'package:flutter/material.dart';

class CategoriesModel {
  IconData icon;

  CategoriesModel({
    required this.icon,
  });

  static List<CategoriesModel> categories = [
    CategoriesModel(
      icon: Icons.temple_buddhist,
    ),
    CategoriesModel(
      icon: Icons.ramen_dining,
    ),
    CategoriesModel(
      icon: Icons.celebration_sharp,
    ),
    CategoriesModel(
      icon: Icons.add_moderator,
    ),
    CategoriesModel(
      icon: Icons.wysiwyg,
    ),
    CategoriesModel(
      icon: Icons.anchor_outlined,
    ),
    CategoriesModel(
      icon: Icons.warehouse,
    ),
  ];
}



//  CategoriesModel(const Icon(
//     Icons.temple_buddhist,
//   )),
//   CategoriesModel(const Icon(Icons.ramen_dining)),
//   CategoriesModel(const Icon(Icons.celebration_sharp)),
//   CategoriesModel(const Icon(Icons.add_moderator)),
//   CategoriesModel(const Icon(Icons.wysiwyg)),
//   CategoriesModel(const Icon(Icons.anchor_outlined)),
//   CategoriesModel(const Icon(Icons.warehouse)),