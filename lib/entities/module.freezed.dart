// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Module _$ModuleFromJson(Map<String, dynamic> json) {
  return _Module.fromJson(json);
}

/// @nodoc
mixin _$Module {
  String get title => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  List<ModulePart> get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModuleCopyWith<Module> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleCopyWith<$Res> {
  factory $ModuleCopyWith(Module value, $Res Function(Module) then) =
      _$ModuleCopyWithImpl<$Res, Module>;
  @useResult
  $Res call({String title, String icon, List<ModulePart> content});
}

/// @nodoc
class _$ModuleCopyWithImpl<$Res, $Val extends Module>
    implements $ModuleCopyWith<$Res> {
  _$ModuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ModulePart>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModuleImplCopyWith<$Res> implements $ModuleCopyWith<$Res> {
  factory _$$ModuleImplCopyWith(
          _$ModuleImpl value, $Res Function(_$ModuleImpl) then) =
      __$$ModuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String icon, List<ModulePart> content});
}

/// @nodoc
class __$$ModuleImplCopyWithImpl<$Res>
    extends _$ModuleCopyWithImpl<$Res, _$ModuleImpl>
    implements _$$ModuleImplCopyWith<$Res> {
  __$$ModuleImplCopyWithImpl(
      _$ModuleImpl _value, $Res Function(_$ModuleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = null,
    Object? content = null,
  }) {
    return _then(_$ModuleImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ModulePart>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModuleImpl implements _Module {
  const _$ModuleImpl(
      {required this.title,
      required this.icon,
      required final List<ModulePart> content})
      : _content = content;

  factory _$ModuleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModuleImplFromJson(json);

  @override
  final String title;
  @override
  final String icon;
  final List<ModulePart> _content;
  @override
  List<ModulePart> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  String toString() {
    return 'Module(title: $title, icon: $icon, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            const DeepCollectionEquality().equals(other._content, _content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, icon, const DeepCollectionEquality().hash(_content));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModuleImplCopyWith<_$ModuleImpl> get copyWith =>
      __$$ModuleImplCopyWithImpl<_$ModuleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModuleImplToJson(
      this,
    );
  }
}

abstract class _Module implements Module {
  const factory _Module(
      {required final String title,
      required final String icon,
      required final List<ModulePart> content}) = _$ModuleImpl;

  factory _Module.fromJson(Map<String, dynamic> json) = _$ModuleImpl.fromJson;

  @override
  String get title;
  @override
  String get icon;
  @override
  List<ModulePart> get content;
  @override
  @JsonKey(ignore: true)
  _$$ModuleImplCopyWith<_$ModuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
