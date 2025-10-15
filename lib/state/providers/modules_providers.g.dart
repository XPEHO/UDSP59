// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modules_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(modules)
const modulesProvider = ModulesProvider._();

final class ModulesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Module>>,
          List<Module>,
          FutureOr<List<Module>>
        >
    with $FutureModifier<List<Module>>, $FutureProvider<List<Module>> {
  const ModulesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'modulesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$modulesHash();

  @$internal
  @override
  $FutureProviderElement<List<Module>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Module>> create(Ref ref) {
    return modules(ref);
  }
}

String _$modulesHash() => r'a48d4313a0be81d14a706389c40e66ac0cde32c2';
