// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tips_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(tips)
const tipsProvider = TipsProvider._();

final class TipsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<String>>,
          List<String>,
          FutureOr<List<String>>
        >
    with $FutureModifier<List<String>>, $FutureProvider<List<String>> {
  const TipsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tipsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tipsHash();

  @$internal
  @override
  $FutureProviderElement<List<String>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<String>> create(Ref ref) {
    return tips(ref);
  }
}

String _$tipsHash() => r'2fd2e07a5d46984e059c3a8773f21e3f1c3e3f73';

@ProviderFor(randomTip)
const randomTipProvider = RandomTipProvider._();

final class RandomTipProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  const RandomTipProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'randomTipProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$randomTipHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return randomTip(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$randomTipHash() => r'074b0c4bcb56af4136201cba96a61f2ee0397e9b';
