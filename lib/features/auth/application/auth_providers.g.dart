// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(firebaseAuthService)
final firebaseAuthServiceProvider = FirebaseAuthServiceProvider._();

final class FirebaseAuthServiceProvider
    extends
        $FunctionalProvider<
          FirebaseAuthService,
          FirebaseAuthService,
          FirebaseAuthService
        >
    with $Provider<FirebaseAuthService> {
  FirebaseAuthServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'firebaseAuthServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$firebaseAuthServiceHash();

  @$internal
  @override
  $ProviderElement<FirebaseAuthService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FirebaseAuthService create(Ref ref) {
    return firebaseAuthService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FirebaseAuthService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FirebaseAuthService>(value),
    );
  }
}

String _$firebaseAuthServiceHash() =>
    r'5b8afeb2ee48dd318a224972ba814148af29a18c';

@ProviderFor(SignUpNotifier)
final signUpProvider = SignUpNotifierProvider._();

final class SignUpNotifierProvider
    extends $NotifierProvider<SignUpNotifier, AsyncValue<void>> {
  SignUpNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signUpProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signUpNotifierHash();

  @$internal
  @override
  SignUpNotifier create() => SignUpNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$signUpNotifierHash() => r'36b9ae29ec8951ad3c93babd788853e88b7127b5';

abstract class _$SignUpNotifier extends $Notifier<AsyncValue<void>> {
  AsyncValue<void> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, AsyncValue<void>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, AsyncValue<void>>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
