// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$imageHash() => r'8dd956903dc9dadab615409ed3a930b0842a10c3';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [image].
@ProviderFor(image)
const imageProvider = ImageFamily();

/// See also [image].
class ImageFamily extends Family<AsyncValue<String>> {
  /// See also [image].
  const ImageFamily();

  /// See also [image].
  ImageProvider call(
    String imagePath,
  ) {
    return ImageProvider(
      imagePath,
    );
  }

  @override
  ImageProvider getProviderOverride(
    covariant ImageProvider provider,
  ) {
    return call(
      provider.imagePath,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'imageProvider';
}

/// See also [image].
class ImageProvider extends AutoDisposeFutureProvider<String> {
  /// See also [image].
  ImageProvider(
    String imagePath,
  ) : this._internal(
          (ref) => image(
            ref as ImageRef,
            imagePath,
          ),
          from: imageProvider,
          name: r'imageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$imageHash,
          dependencies: ImageFamily._dependencies,
          allTransitiveDependencies: ImageFamily._allTransitiveDependencies,
          imagePath: imagePath,
        );

  ImageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.imagePath,
  }) : super.internal();

  final String imagePath;

  @override
  Override overrideWith(
    FutureOr<String> Function(ImageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ImageProvider._internal(
        (ref) => create(ref as ImageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        imagePath: imagePath,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _ImageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ImageProvider && other.imagePath == imagePath;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imagePath.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ImageRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `imagePath` of this provider.
  String get imagePath;
}

class _ImageProviderElement extends AutoDisposeFutureProviderElement<String>
    with ImageRef {
  _ImageProviderElement(super.provider);

  @override
  String get imagePath => (origin as ImageProvider).imagePath;
}

String _$imageUrlHash() => r'6a289ab133804944da6d9d3c9ecd3fd2eb9c9904';

/// See also [imageUrl].
@ProviderFor(imageUrl)
const imageUrlProvider = ImageUrlFamily();

/// See also [imageUrl].
class ImageUrlFamily extends Family<String> {
  /// See also [imageUrl].
  const ImageUrlFamily();

  /// See also [imageUrl].
  ImageUrlProvider call(
    String imagePath,
  ) {
    return ImageUrlProvider(
      imagePath,
    );
  }

  @override
  ImageUrlProvider getProviderOverride(
    covariant ImageUrlProvider provider,
  ) {
    return call(
      provider.imagePath,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'imageUrlProvider';
}

/// See also [imageUrl].
class ImageUrlProvider extends AutoDisposeProvider<String> {
  /// See also [imageUrl].
  ImageUrlProvider(
    String imagePath,
  ) : this._internal(
          (ref) => imageUrl(
            ref as ImageUrlRef,
            imagePath,
          ),
          from: imageUrlProvider,
          name: r'imageUrlProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$imageUrlHash,
          dependencies: ImageUrlFamily._dependencies,
          allTransitiveDependencies: ImageUrlFamily._allTransitiveDependencies,
          imagePath: imagePath,
        );

  ImageUrlProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.imagePath,
  }) : super.internal();

  final String imagePath;

  @override
  Override overrideWith(
    String Function(ImageUrlRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ImageUrlProvider._internal(
        (ref) => create(ref as ImageUrlRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        imagePath: imagePath,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String> createElement() {
    return _ImageUrlProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ImageUrlProvider && other.imagePath == imagePath;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imagePath.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ImageUrlRef on AutoDisposeProviderRef<String> {
  /// The parameter `imagePath` of this provider.
  String get imagePath;
}

class _ImageUrlProviderElement extends AutoDisposeProviderElement<String>
    with ImageUrlRef {
  _ImageUrlProviderElement(super.provider);

  @override
  String get imagePath => (origin as ImageUrlProvider).imagePath;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
