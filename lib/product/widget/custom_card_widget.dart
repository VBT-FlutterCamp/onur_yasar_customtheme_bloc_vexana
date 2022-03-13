import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';

import 'package:monster_hunter/home/model/monster_hunter_model.dart';

class ProductWidget extends StatelessWidget {
  final MonsterHunterModel? model;
  const ProductWidget({
    Key? key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _imgUrl =
        "https://assets.mhw-db.com/armor/6dc6e7e77a2fbcefc61a3dbf7da50e580e9b9f1c.d5d3b0e79f3de87710f818b65422f2d1.png";
    return Padding(
      padding: context.horizontalPaddingLow,
      child: SizedBox(
        width: context.width * 0.8,
        height: context.height * 0.5,
        child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          elevation: 5,
          child: Padding(
            padding: context.horizontalPaddingNormal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 1,
                  child: _productImage(_imgUrl),
                ),
                _productName(context),
                _productButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Image _productImage(String _imgUrl) {
    return Image.network(
      model?.assets?.imageFemale ?? _imgUrl,
      fit: BoxFit.cover,
    );
  }

  Widget _productName(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _name(context),
        _productRank(context),
      ],
    );
  }

  Padding _name(BuildContext context) {
    return Padding(
      padding: context.verticalPaddingLow,
      child: Text(
        model?.name ?? "Null",
        style: context.textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Padding _productRank(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingLow,
      child: Text(
        "Rank: " + (model?.rank ?? 'low'),
        style: context.textTheme.bodyText2?.copyWith(
            fontFamily: GoogleFonts.merriweather().fontFamily,
            fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _productButton(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(4),
        fixedSize: MaterialStateProperty.all(
          Size(context.width * 0.5, context.height * 0.04),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(Icons.add),
          Text("Sepete Ekle"),
        ],
      ),
    );
  }
}
