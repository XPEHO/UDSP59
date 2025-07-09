// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_part.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModulePart _$ModulePartFromJson(Map<String, dynamic> json) => _ModulePart(
      subtitle: json['subtitle'] as String,
      image: json['image'] as String,
      elements: (json['elements'] as List<dynamic>)
          .map((e) => ModulePartElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ModulePartToJson(_ModulePart instance) =>
    <String, dynamic>{
      'subtitle': instance.subtitle,
      'image': instance.image,
      'elements': instance.elements,
    };
