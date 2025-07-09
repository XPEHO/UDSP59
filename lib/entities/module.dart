import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:udsp59/entities/module_part.dart';

part 'module.freezed.dart';
part 'module.g.dart';

@freezed
abstract class Module with _$Module {
  const factory Module({
    required String title,
    required String icon,
    required String image,
    required int order,
    required List<ModulePart> parts,
  }) = _Module;

  factory Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);
}
