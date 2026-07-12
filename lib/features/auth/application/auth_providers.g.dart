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
    extends $NotifierProvider<SignUpNotifier, AsyncValue<AppUser?>> {
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
  Override overrideWithValue(AsyncValue<AppUser?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<AppUser?>>(value),
    );
  }
}

String _$signUpNotifierHash() => r'5c7b9ba2b0f1d412a22d601a733360bbd667ad91';

abstract class _$SignUpNotifier extends $Notifier<AsyncValue<AppUser?>> {
  AsyncValue<AppUser?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<AppUser?>, AsyncValue<AppUser?>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AppUser?>, AsyncValue<AppUser?>>,
              AsyncValue<AppUser?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(LoginNotifier)
final loginProvider = LoginNotifierProvider._();

final class LoginNotifierProvider
    extends $NotifierProvider<LoginNotifier, AsyncValue<AppUser?>> {
  LoginNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginNotifierHash();

  @$internal
  @override
  LoginNotifier create() => LoginNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<AppUser?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<AppUser?>>(value),
    );
  }
}

String _$loginNotifierHash() => r'3e3662824afa23f602ec8115b84d99c6994e9440';

abstract class _$LoginNotifier extends $Notifier<AsyncValue<AppUser?>> {
  AsyncValue<AppUser?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<AppUser?>, AsyncValue<AppUser?>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AppUser?>, AsyncValue<AppUser?>>,
              AsyncValue<AppUser?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
