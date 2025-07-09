// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_part.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModulePart {
  String get subtitle;
  String get image;
  List<ModulePartElement> get elements;

  /// Create a copy of ModulePart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModulePartCopyWith<ModulePart> get copyWith =>
      _$ModulePartCopyWithImpl<ModulePart>(this as ModulePart, _$identity);

  /// Serializes this ModulePart to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModulePart &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other.elements, elements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, subtitle, image,
      const DeepCollectionEquality().hash(elements));

  @override
  String toString() {
    return 'ModulePart(subtitle: $subtitle, image: $image, elements: $elements)';
  }
}

/// @nodoc
abstract mixin class $ModulePartCopyWith<$Res> {
  factory $ModulePartCopyWith(
          ModulePart value, $Res Function(ModulePart) _then) =
      _$ModulePartCopyWithImpl;
  @useResult
  $Res call({String subtitle, String image, List<ModulePartElement> elements});
}

/// @nodoc
class _$ModulePartCopyWithImpl<$Res> implements $ModulePartCopyWith<$Res> {
  _$ModulePartCopyWithImpl(this._self, this._then);

  final ModulePart _self;
  final $Res Function(ModulePart) _then;

  /// Create a copy of ModulePart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtitle = null,
    Object? image = null,
    Object? elements = null,
  }) {
    return _then(_self.copyWith(
      subtitle: null == subtitle
          ? _self.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      elements: null == elements
          ? _self.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<ModulePartElement>,
    ));
  }
}

/// Adds pattern-matching-related methods to [ModulePart].
extension ModulePartPatterns on ModulePart {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ModulePart value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModulePart() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ModulePart value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModulePart():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ModulePart value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModulePart() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String subtitle, String image, List<ModulePartElement> elements)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModulePart() when $default != null:
        return $default(_that.subtitle, _that.image, _that.elements);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String subtitle, String image, List<ModulePartElement> elements)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModulePart():
        return $default(_that.subtitle, _that.image, _that.elements);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String subtitle, String image, List<ModulePartElement> elements)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModulePart() when $default != null:
        return $default(_that.subtitle, _that.image, _that.elements);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ModulePart implements ModulePart {
  const _ModulePart(
      {required this.subtitle,
      required this.image,
      required final List<ModulePartElement> elements})
      : _elements = elements;
  factory _ModulePart.fromJson(Map<String, dynamic> json) =>
      _$ModulePartFromJson(json);

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

  /// Create a copy of ModulePart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModulePartCopyWith<_ModulePart> get copyWith =>
      __$ModulePartCopyWithImpl<_ModulePart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModulePartToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModulePart &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._elements, _elements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, subtitle, image,
      const DeepCollectionEquality().hash(_elements));

  @override
  String toString() {
    return 'ModulePart(subtitle: $subtitle, image: $image, elements: $elements)';
  }
}

/// @nodoc
abstract mixin class _$ModulePartCopyWith<$Res>
    implements $ModulePartCopyWith<$Res> {
  factory _$ModulePartCopyWith(
          _ModulePart value, $Res Function(_ModulePart) _then) =
      __$ModulePartCopyWithImpl;
  @override
  @useResult
  $Res call({String subtitle, String image, List<ModulePartElement> elements});
}

/// @nodoc
class __$ModulePartCopyWithImpl<$Res> implements _$ModulePartCopyWith<$Res> {
  __$ModulePartCopyWithImpl(this._self, this._then);

  final _ModulePart _self;
  final $Res Function(_ModulePart) _then;

  /// Create a copy of ModulePart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? subtitle = null,
    Object? image = null,
    Object? elements = null,
  }) {
    return _then(_ModulePart(
      subtitle: null == subtitle
          ? _self.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      elements: null == elements
          ? _self._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<ModulePartElement>,
    ));
  }
}

// dart format on
