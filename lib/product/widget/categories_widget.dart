import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:monster_hunter/home/model/categories_model.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      height: context.height * 0.12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: context.paddingLow,
            child: Text(
              "Categories",
              style: context.textTheme.headline5,
            ),
          ),
          SizedBox(
            width: context.width,
            height: context.height * 0.05,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: CategoriesModel.categories.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Padding(
                        padding: context.horizontalPaddingNormal,
                        child: Icon(CategoriesModel.categories[index].icon),
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
