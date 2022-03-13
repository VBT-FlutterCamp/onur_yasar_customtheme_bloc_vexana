import 'package:json_annotation/json_annotation.dart';

import 'package:vexana/vexana.dart';
part 'monster_hunter_model.g.dart';

@JsonSerializable(createToJson: false)
class MonsterHunterModel extends INetworkModel {
  MonsterHunterModel({
    this.id,
    this.type,
    this.rank,
    this.rarity,
    this.attributes,
    this.name,
    this.skills,
    this.armorSet,
    this.assets,
    this.crafting,
  });

  int? id;
  String? type;
  String? rank;
  int? rarity;

  Attributes? attributes;
  String? name;

  List<Skill>? skills;
  ArmorSet? armorSet;
  Assets? assets;
  Crafting? crafting;

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "rank": rank,
        "rarity": rarity,
        "attributes": attributes == null ? null : attributes?.toJson(),
        "name": name,
        "skills": skills == null
            ? null
            : List<dynamic>.from(skills?.map((x) => x.toJson()) ?? {}),
        "armorSet": armorSet == null ? null : armorSet?.toJson(),
        "assets": assets == null ? null : assets?.toJson(),
        "crafting": crafting == null ? null : crafting?.toJson(),
      };

  @override
  fromJson(Map<String, dynamic> json) {
    return _$MonsterHunterModelFromJson(json);
  }
}

class ArmorSet {
  ArmorSet({
    this.id,
    this.rank,
    this.name,
    this.pieces,
    this.bonus,
  });

  int? id;
  String? rank;
  String? name;
  List<int>? pieces;
  int? bonus;

  factory ArmorSet.fromJson(Map<String, dynamic> json) => ArmorSet(
        id: json["id"],
        rank: json["rank"],
        name: json["name"],
        pieces: json["pieces"] == null
            ? null
            : List<int>.from(json["pieces"].map((x) => x)),
        bonus: json["bonus"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "rank": rank,
        "name": name,
        "pieces": pieces == null
            ? null
            : List<dynamic>.from(pieces?.map((x) => x) ?? {}),
        "bonus": bonus,
      };
}

class Assets {
  Assets({
    this.imageMale,
    this.imageFemale,
  });

  String? imageMale;
  String? imageFemale;

  factory Assets.fromJson(Map<String, dynamic> json) => Assets(
        imageMale: json["imageMale"],
        imageFemale: json["imageFemale"],
      );

  Map<String, dynamic> toJson() => {
        "imageMale": imageMale,
        "imageFemale": imageFemale,
      };
}

class Attributes {
  Attributes({
    this.requiredGender,
  });

  String? requiredGender;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        requiredGender: json["requiredGender"],
      );

  Map<String, dynamic> toJson() => {
        "requiredGender": requiredGender,
      };
}

class Crafting {
  Crafting({
    this.materials,
  });

  List<Material>? materials;

  factory Crafting.fromJson(Map<String, dynamic> json) => Crafting(
        materials: json["materials"] == null
            ? null
            : List<Material>.from(
                json["materials"].map((x) => Material.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "materials": materials == null
            ? null
            : List<dynamic>.from(materials?.map((x) => x.toJson()) ?? {}),
      };
}

class Material {
  Material({
    this.quantity,
    this.item,
  });

  int? quantity;
  Item? item;

  factory Material.fromJson(Map<String, dynamic> json) => Material(
        quantity: json["quantity"],
        item: json["item"] == null ? null : Item.fromJson(json["item"]),
      );

  Map<String, dynamic> toJson() => {
        "quantity": quantity,
        "item": item == null ? null : item?.toJson(),
      };
}

class Item {
  Item({
    this.id,
    this.rarity,
    this.carryLimit,
    this.value,
    this.name,
    this.description,
  });

  int? id;
  int? rarity;
  int? carryLimit;
  int? value;
  String? name;
  String? description;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        rarity: json["rarity"],
        carryLimit: json["carryLimit"],
        value: json["value"],
        name: json["name"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "rarity": rarity,
        "carryLimit": carryLimit,
        "value": value,
        "name": name,
        "description": description,
      };
}

class Skill {
  Skill({
    this.id,
    this.level,
    this.description,
    this.skill,
    this.skillName,
  });

  int? id;
  int? level;

  String? description;
  int? skill;
  String? skillName;

  factory Skill.fromJson(Map<String, dynamic> json) => Skill(
        id: json["id"],
        level: json["level"],
        description: json["description"],
        skill: json["skill"],
        skillName: json["skillName"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "level": level,
        "description": description,
        "skill": skill,
        "skillName": skillName,
      };
}
