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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModulePart _$ModulePartFromJson(Map<String, dynamic> json) {
  return _ModulePart.fromJson(json);
}

/// @nodoc
mixin _$ModulePart {
  String get subtitle => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModulePartCopyWith<ModulePart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModulePartCopyWith<$Res> {
  factory $ModulePartCopyWith(
          ModulePart value, $Res Function(ModulePart) then) =
      _$ModulePartCopyWithImpl<$Res, ModulePart>;
  @useResult
  $Res call({String subtitle, int order, String image, String description});
}

/// @nodoc
class _$ModulePartCopyWithImpl<$Res, $Val extends ModulePart>
    implements $ModulePartCopyWith<$Res> {
  _$ModulePartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtitle = null,
    Object? order = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String subtitle, int order, String image, String description});
}

/// @nodoc
class __$$ModulePartImplCopyWithImpl<$Res>
    extends _$ModulePartCopyWithImpl<$Res, _$ModulePartImpl>
    implements _$$ModulePartImplCopyWith<$Res> {
  __$$ModulePartImplCopyWithImpl(
      _$ModulePartImpl _value, $Res Function(_$ModulePartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtitle = null,
    Object? order = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_$ModulePartImpl(
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModulePartImpl implements _ModulePart {
  const _$ModulePartImpl(
      {required this.subtitle,
      required this.order,
      required this.image,
      required this.description});

  factory _$ModulePartImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModulePartImplFromJson(json);

  @override
  final String subtitle;
  @override
  final int order;
  @override
  final String image;
  @override
  final String description;

  @override
  String toString() {
    return 'ModulePart(subtitle: $subtitle, order: $order, image: $image, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModulePartImpl &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, subtitle, order, image, description);

  @JsonKey(ignore: true)
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
      required final int order,
      required final String image,
      required final String description}) = _$ModulePartImpl;

  factory _ModulePart.fromJson(Map<String, dynamic> json) =
      _$ModulePartImpl.fromJson;

  @override
  String get subtitle;
  @override
  int get order;
  @override
  String get image;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ModulePartImplCopyWith<_$ModulePartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
