// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(image)
const imageProvider = ImageFamily._();

final class ImageProvider
    extends $FunctionalProvider<AsyncValue<String>, String, FutureOr<String>>
    with $FutureModifier<String>, $FutureProvider<String> {
  const ImageProvider._({
    required ImageFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'imageProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$imageHash();

  @override
  String toString() {
    return r'imageProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<String> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String> create(Ref ref) {
    final argument = this.argument as String;
    return image(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ImageProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$imageHash() => r'34e84568addb450549c07600c773a475f0e4e7f6';

final class ImageFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<String>, String> {
  const ImageFamily._()
    : super(
        retry: null,
        name: r'imageProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ImageProvider call(String imagePath) =>
      ImageProvider._(argument: imagePath, from: this);

  @override
  String toString() => r'imageProvider';
}

@ProviderFor(imageUrl)
const imageUrlProvider = ImageUrlFamily._();

final class ImageUrlProvider extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  const ImageUrlProvider._({
    required ImageUrlFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'imageUrlProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$imageUrlHash();

  @override
  String toString() {
    return r'imageUrlProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    final argument = this.argument as String;
    return imageUrl(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ImageUrlProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$imageUrlHash() => r'01c1a2a0487553be302ac5b77d61c92662898a37';

final class ImageUrlFamily extends $Family
    with $FunctionalFamilyOverride<String, String> {
  const ImageUrlFamily._()
    : super(
        retry: null,
        name: r'imageUrlProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ImageUrlProvider call(String imagePath) =>
      ImageUrlProvider._(argument: imagePath, from: this);

  @override
  String toString() => r'imageUrlProvider';
}
