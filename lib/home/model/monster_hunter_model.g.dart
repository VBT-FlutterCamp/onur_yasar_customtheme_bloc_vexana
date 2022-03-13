// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monster_hunter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MonsterHunterModel _$MonsterHunterModelFromJson(Map<String, dynamic> json) =>
    MonsterHunterModel(
      id: json['id'] as int?,
      type: json['type'] as String?,
      rank: json['rank'] as String?,
      rarity: json['rarity'] as int?,
      attributes: json['attributes'] == null
          ? null
          : Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
      name: json['name'] as String?,
      skills: (json['skills'] as List<dynamic>?)
          ?.map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      armorSet: json['armorSet'] == null
          ? null
          : ArmorSet.fromJson(json['armorSet'] as Map<String, dynamic>),
      assets: json['assets'] == null
          ? null
          : Assets.fromJson(json['assets'] as Map<String, dynamic>),
      crafting: json['crafting'] == null
          ? null
          : Crafting.fromJson(json['crafting'] as Map<String, dynamic>),
    );
