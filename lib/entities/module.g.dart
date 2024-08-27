// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModuleImpl _$$ModuleImplFromJson(Map<String, dynamic> json) => _$ModuleImpl(
      title: json['title'] as String,
      icon: json['icon'] as String,
      image: json['image'] as String,
      order: (json['order'] as num).toInt(),
      parts: (json['parts'] as List<dynamic>)
          .map((e) => ModulePart.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ModuleImplToJson(_$ModuleImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'icon': instance.icon,
      'image': instance.image,
      'order': instance.order,
      'parts': instance.parts,
    };
