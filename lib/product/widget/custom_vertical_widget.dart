import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import 'package:monster_hunter/home/model/monster_hunter_model.dart';

class CustomGridCard extends StatelessWidget {
  final MonsterHunterModel? model;
  const CustomGridCard({
    Key? key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 1,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(9))),
          elevation: 5,
          child: Stack(alignment: Alignment.center, children: [
            _imageProduct(),
            _detailButton(context),
            _name(context),
          ]),
        ),
      ),
    );
  }

  Image _imageProduct() {
    return Image.network(
      model?.assets?.imageMale ?? "",
      fit: BoxFit.cover,
    );
  }

  Positioned _detailButton(BuildContext context) {
    return Positioned(
      bottom: context.height * 0.01,
      left: context.width * 0.01,
      child: FloatingActionButton(
        mini: true,
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  Positioned _name(BuildContext context) {
    return Positioned(
      top: context.height * 0.01,
      right: context.width * 0.16,
      child: Text(
        model?.type ?? "",
        style: context.textTheme.headline6,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
