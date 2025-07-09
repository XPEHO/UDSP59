// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_part_element.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModulePartElement {
  String get text;
  String get image;

  /// Create a copy of ModulePartElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModulePartElementCopyWith<ModulePartElement> get copyWith =>
      _$ModulePartElementCopyWithImpl<ModulePartElement>(
          this as ModulePartElement, _$identity);

  /// Serializes this ModulePartElement to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModulePartElement &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, image);

  @override
  String toString() {
    return 'ModulePartElement(text: $text, image: $image)';
  }
}

/// @nodoc
abstract mixin class $ModulePartElementCopyWith<$Res> {
  factory $ModulePartElementCopyWith(
          ModulePartElement value, $Res Function(ModulePartElement) _then) =
      _$ModulePartElementCopyWithImpl;
  @useResult
  $Res call({String text, String image});
}

/// @nodoc
class _$ModulePartElementCopyWithImpl<$Res>
    implements $ModulePartElementCopyWith<$Res> {
  _$ModulePartElementCopyWithImpl(this._self, this._then);

  final ModulePartElement _self;
  final $Res Function(ModulePartElement) _then;

  /// Create a copy of ModulePartElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? image = null,
  }) {
    return _then(_self.copyWith(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ModulePartElement].
extension ModulePartElementPatterns on ModulePartElement {
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
    TResult Function(_ModulePartElement value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModulePartElement() when $default != null:
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
    TResult Function(_ModulePartElement value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModulePartElement():
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
    TResult? Function(_ModulePartElement value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModulePartElement() when $default != null:
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
    TResult Function(String text, String image)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModulePartElement() when $default != null:
        return $default(_that.text, _that.image);
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
    TResult Function(String text, String image) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModulePartElement():
        return $default(_that.text, _that.image);
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
    TResult? Function(String text, String image)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModulePartElement() when $default != null:
        return $default(_that.text, _that.image);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ModulePartElement implements ModulePartElement {
  const _ModulePartElement({required this.text, required this.image});
  factory _ModulePartElement.fromJson(Map<String, dynamic> json) =>
      _$ModulePartElementFromJson(json);

  @override
  final String text;
  @override
  final String image;

  /// Create a copy of ModulePartElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModulePartElementCopyWith<_ModulePartElement> get copyWith =>
      __$ModulePartElementCopyWithImpl<_ModulePartElement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModulePartElementToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModulePartElement &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, image);

  @override
  String toString() {
    return 'ModulePartElement(text: $text, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$ModulePartElementCopyWith<$Res>
    implements $ModulePartElementCopyWith<$Res> {
  factory _$ModulePartElementCopyWith(
          _ModulePartElement value, $Res Function(_ModulePartElement) _then) =
      __$ModulePartElementCopyWithImpl;
  @override
  @useResult
  $Res call({String text, String image});
}

/// @nodoc
class __$ModulePartElementCopyWithImpl<$Res>
    implements _$ModulePartElementCopyWith<$Res> {
  __$ModulePartElementCopyWithImpl(this._self, this._then);

  final _ModulePartElement _self;
  final $Res Function(_ModulePartElement) _then;

  /// Create a copy of ModulePartElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = null,
    Object? image = null,
  }) {
    return _then(_ModulePartElement(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
