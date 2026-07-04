// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(authRepositories)
final authRepositoriesProvider = AuthRepositoriesProvider._();

final class AuthRepositoriesProvider
    extends
        $FunctionalProvider<
          AuthRepositories,
          AuthRepositories,
          AuthRepositories
        >
    with $Provider<AuthRepositories> {
  AuthRepositoriesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authRepositoriesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authRepositoriesHash();

  @$internal
  @override
  $ProviderElement<AuthRepositories> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthRepositories create(Ref ref) {
    return authRepositories(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthRepositories value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthRepositories>(value),
    );
  }
}

String _$authRepositoriesHash() => r'1ad25c8267b9ba3025b9c46a06af2b2fe6f58510';

@ProviderFor(courseRepositories)
final courseRepositoriesProvider = CourseRepositoriesProvider._();

final class CourseRepositoriesProvider
    extends
        $FunctionalProvider<
          CourseRepositories,
          CourseRepositories,
          CourseRepositories
        >
    with $Provider<CourseRepositories> {
  CourseRepositoriesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'courseRepositoriesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$courseRepositoriesHash();

  @$internal
  @override
  $ProviderElement<CourseRepositories> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CourseRepositories create(Ref ref) {
    return courseRepositories(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CourseRepositories value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CourseRepositories>(value),
    );
  }
}

String _$courseRepositoriesHash() =>
    r'03e7872e093b3c998088fc1bae0f81c9e9cf9db9';
