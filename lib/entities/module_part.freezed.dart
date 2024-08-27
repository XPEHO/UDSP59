// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_part.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModulePart _$ModulePartFromJson(Map<String, dynamic> json) {
  return _ModulePart.fromJson(json);
}

/// @nodoc
mixin _$ModulePart {
  String get subtitle => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<ModulePartElement> get elements => throw _privateConstructorUsedError;

  /// Serializes this ModulePart to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModulePart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModulePartCopyWith<ModulePart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModulePartCopyWith<$Res> {
  factory $ModulePartCopyWith(
          ModulePart value, $Res Function(ModulePart) then) =
      _$ModulePartCopyWithImpl<$Res, ModulePart>;
  @useResult
  $Res call({String subtitle, String image, List<ModulePartElement> elements});
}

/// @nodoc
class _$ModulePartCopyWithImpl<$Res, $Val extends ModulePart>
    implements $ModulePartCopyWith<$Res> {
  _$ModulePartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModulePart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtitle = null,
    Object? image = null,
    Object? elements = null,
  }) {
    return _then(_value.copyWith(
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      elements: null == elements
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<ModulePartElement>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModulePartImplCopyWith<$Res>
    implements $ModulePartCopyWith<$Res> {
  factory _$$ModulePartImplCopyWith(
          _$ModulePartImpl value, $Res Function(_$ModulePartImpl) then) =
      __$$ModulePartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subtitle, String image, List<ModulePartElement> elements});
}

/// @nodoc
class __$$ModulePartImplCopyWithImpl<$Res>
    extends _$ModulePartCopyWithImpl<$Res, _$ModulePartImpl>
    implements _$$ModulePartImplCopyWith<$Res> {
  __$$ModulePartImplCopyWithImpl(
      _$ModulePartImpl _value, $Res Function(_$ModulePartImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModulePart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtitle = null,
    Object? image = null,
    Object? elements = null,
  }) {
    return _then(_$ModulePartImpl(
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<ModulePartElement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModulePartImpl implements _ModulePart {
  const _$ModulePartImpl(
      {required this.subtitle,
      required this.image,
      required final List<ModulePartElement> elements})
      : _elements = elements;

  factory _$ModulePartImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModulePartImplFromJson(json);

  @override
  final String subtitle;
  @override
  final String image;
  final List<ModulePartElement> _elements;
  @override
  List<ModulePartElement> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  @override
  String toString() {
    return 'ModulePart(subtitle: $subtitle, image: $image, elements: $elements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModulePartImpl &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._elements, _elements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, subtitle, image,
      const DeepCollectionEquality().hash(_elements));

  /// Create a copy of ModulePart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModulePartImplCopyWith<_$ModulePartImpl> get copyWith =>
      __$$ModulePartImplCopyWithImpl<_$ModulePartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModulePartImplToJson(
      this,
    );
  }
}

abstract class _ModulePart implements ModulePart {
  const factory _ModulePart(
      {required final String subtitle,
      required final String image,
      required final List<ModulePartElement> elements}) = _$ModulePartImpl;

  factory _ModulePart.fromJson(Map<String, dynamic> json) =
      _$ModulePartImpl.fromJson;

  @override
  String get subtitle;
  @override
  String get image;
  @override
  List<ModulePartElement> get elements;

  /// Create a copy of ModulePart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModulePartImplCopyWith<_$ModulePartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
