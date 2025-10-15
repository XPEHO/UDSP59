// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(firebaseModules)
const firebaseModulesProvider = FirebaseModulesProvider._();

final class FirebaseModulesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Module>>,
          List<Module>,
          FutureOr<List<Module>>
        >
    with $FutureModifier<List<Module>>, $FutureProvider<List<Module>> {
  const FirebaseModulesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'firebaseModulesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$firebaseModulesHash();

  @$internal
  @override
  $FutureProviderElement<List<Module>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Module>> create(Ref ref) {
    return firebaseModules(ref);
  }
}

String _$firebaseModulesHash() => r'0397de0f5bbb5b2bccda531e1f3e076de2a41636';

@ProviderFor(firebaseTips)
const firebaseTipsProvider = FirebaseTipsProvider._();

final class FirebaseTipsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<String>>,
          List<String>,
          FutureOr<List<String>>
        >
    with $FutureModifier<List<String>>, $FutureProvider<List<String>> {
  const FirebaseTipsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'firebaseTipsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$firebaseTipsHash();

  @$internal
  @override
  $FutureProviderElement<List<String>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<String>> create(Ref ref) {
    return firebaseTips(ref);
  }
}

String _$firebaseTipsHash() => r'5a82209533abe3802b03f8ad489367993ffe9d5a';
