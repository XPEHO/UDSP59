import 'package:freezed_annotation/freezed_annotation.dart';

part 'module_part_element.freezed.dart';
part 'module_part_element.g.dart';

@freezed
class ModulePartElement with _$ModulePartElement {
  const factory ModulePartElement({
    required String text,
    required String image,
  }) = _ModulePartElement;

  factory ModulePartElement.fromJson(Map<String, dynamic> json) =>
      _$ModulePartElementFromJson(json);
}
