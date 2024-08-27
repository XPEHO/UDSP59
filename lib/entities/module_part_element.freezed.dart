// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_part_element.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModulePartElement _$ModulePartElementFromJson(Map<String, dynamic> json) {
  return _ModulePartElement.fromJson(json);
}

/// @nodoc
mixin _$ModulePartElement {
  String get text => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this ModulePartElement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModulePartElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModulePartElementCopyWith<ModulePartElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModulePartElementCopyWith<$Res> {
  factory $ModulePartElementCopyWith(
          ModulePartElement value, $Res Function(ModulePartElement) then) =
      _$ModulePartElementCopyWithImpl<$Res, ModulePartElement>;
  @useResult
  $Res call({String text, String image});
}

/// @nodoc
class _$ModulePartElementCopyWithImpl<$Res, $Val extends ModulePartElement>
    implements $ModulePartElementCopyWith<$Res> {
  _$ModulePartElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModulePartElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModulePartElementImplCopyWith<$Res>
    implements $ModulePartElementCopyWith<$Res> {
  factory _$$ModulePartElementImplCopyWith(_$ModulePartElementImpl value,
          $Res Function(_$ModulePartElementImpl) then) =
      __$$ModulePartElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String image});
}

/// @nodoc
class __$$ModulePartElementImplCopyWithImpl<$Res>
    extends _$ModulePartElementCopyWithImpl<$Res, _$ModulePartElementImpl>
    implements _$$ModulePartElementImplCopyWith<$Res> {
  __$$ModulePartElementImplCopyWithImpl(_$ModulePartElementImpl _value,
      $Res Function(_$ModulePartElementImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModulePartElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? image = null,
  }) {
    return _then(_$ModulePartElementImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModulePartElementImpl implements _ModulePartElement {
  const _$ModulePartElementImpl({required this.text, required this.image});

  factory _$ModulePartElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModulePartElementImplFromJson(json);

  @override
  final String text;
  @override
  final String image;

  @override
  String toString() {
    return 'ModulePartElement(text: $text, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModulePartElementImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, image);

  /// Create a copy of ModulePartElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModulePartElementImplCopyWith<_$ModulePartElementImpl> get copyWith =>
      __$$ModulePartElementImplCopyWithImpl<_$ModulePartElementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModulePartElementImplToJson(
      this,
    );
  }
}

abstract class _ModulePartElement implements ModulePartElement {
  const factory _ModulePartElement(
      {required final String text,
      required final String image}) = _$ModulePartElementImpl;

  factory _ModulePartElement.fromJson(Map<String, dynamic> json) =
      _$ModulePartElementImpl.fromJson;

  @override
  String get text;
  @override
  String get image;

  /// Create a copy of ModulePartElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModulePartElementImplCopyWith<_$ModulePartElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
