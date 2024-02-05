import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:udsp59/entities/module_part_element.dart';

part 'module_part.freezed.dart';
part 'module_part.g.dart';

@freezed
class ModulePart with _$ModulePart {
  const factory ModulePart({
    required String subtitle,
    required String image,
    required List<ModulePartElement> elements,
  }) = _ModulePart;

  factory ModulePart.fromJson(Map<String, dynamic> json) =>
      _$ModulePartFromJson(json);
}
