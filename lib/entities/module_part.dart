import 'package:freezed_annotation/freezed_annotation.dart';

part 'module_part.freezed.dart';
part 'module_part.g.dart';

@freezed
class ModulePart with _$ModulePart {
  const factory ModulePart({
    required String subtitle,
    required int order,
    required String image,
    required String description,
  }) = _ModulePart;

  factory ModulePart.fromJson(Map<String, dynamic> json) =>
      _$ModulePartFromJson(json);
}
