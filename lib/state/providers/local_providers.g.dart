// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(localModules)
const localModulesProvider = LocalModulesProvider._();

final class LocalModulesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Module>>,
          List<Module>,
          FutureOr<List<Module>>
        >
    with $FutureModifier<List<Module>>, $FutureProvider<List<Module>> {
  const LocalModulesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'localModulesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$localModulesHash();

  @$internal
  @override
  $FutureProviderElement<List<Module>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Module>> create(Ref ref) {
    return localModules(ref);
  }
}

String _$localModulesHash() => r'1cdde26f3ed4238bd134931d07fd48f28017737d';

@ProviderFor(localTips)
const localTipsProvider = LocalTipsProvider._();

final class LocalTipsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<String>>,
          List<String>,
          FutureOr<List<String>>
        >
    with $FutureModifier<List<String>>, $FutureProvider<List<String>> {
  const LocalTipsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'localTipsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$localTipsHash();

  @$internal
  @override
  $FutureProviderElement<List<String>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<String>> create(Ref ref) {
    return localTips(ref);
  }
}

String _$localTipsHash() => r'82b7dd8cc8b62c8c7e04be6b51cccc93b3514ee8';

@ProviderFor(lastModulesRead)
const lastModulesReadProvider = LastModulesReadProvider._();

final class LastModulesReadProvider
    extends $FunctionalProvider<AsyncValue<String>, String, FutureOr<String>>
    with $FutureModifier<String>, $FutureProvider<String> {
  const LastModulesReadProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'lastModulesReadProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$lastModulesReadHash();

  @$internal
  @override
  $FutureProviderElement<String> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String> create(Ref ref) {
    return lastModulesRead(ref);
  }
}

String _$lastModulesReadHash() => r'bd1bc3727266a5654ff7a95eb356afa42c7c52dc';

@ProviderFor(lastTipsRead)
const lastTipsReadProvider = LastTipsReadProvider._();

final class LastTipsReadProvider
    extends $FunctionalProvider<AsyncValue<String>, String, FutureOr<String>>
    with $FutureModifier<String>, $FutureProvider<String> {
  const LastTipsReadProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'lastTipsReadProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$lastTipsReadHash();

  @$internal
  @override
  $FutureProviderElement<String> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String> create(Ref ref) {
    return lastTipsRead(ref);
  }
}

String _$lastTipsReadHash() => r'10c462d2185ce60d785637eb92df8fea3d6344bb';
