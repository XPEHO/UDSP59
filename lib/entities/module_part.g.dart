// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_part.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModulePartImpl _$$ModulePartImplFromJson(Map<String, dynamic> json) =>
    _$ModulePartImpl(
      subtitle: json['subtitle'] as String,
      image: json['image'] as String,
      elements: (json['elements'] as List<dynamic>)
          .map((e) => ModulePartElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ModulePartImplToJson(_$ModulePartImpl instance) =>
    <String, dynamic>{
      'subtitle': instance.subtitle,
      'image': instance.image,
      'elements': instance.elements,
    };
