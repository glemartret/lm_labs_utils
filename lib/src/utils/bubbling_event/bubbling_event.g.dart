// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bubbling_event.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bubblingStreamHash() => r'c48ced2f9289518d51fa0a30c1e24d3d422ed331';

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

abstract class _$BubblingStream
    extends BuildlessAutoDisposeNotifier<BubblingState<T>> {
  late final Stream<T> stream;

  BubblingState<T> build(
    Stream<T> stream,
  );
}

/// See also [BubblingStream].
@ProviderFor(BubblingStream)
const bubblingStreamProvider = BubblingStreamFamily();

/// See also [BubblingStream].
class BubblingStreamFamily extends Family<BubblingState<T>> {
  /// See also [BubblingStream].
  const BubblingStreamFamily();

  /// See also [BubblingStream].
  BubblingStreamProvider call(
    Stream<T> stream,
  ) {
    return BubblingStreamProvider(
      stream,
    );
  }

  @override
  BubblingStreamProvider getProviderOverride(
    covariant BubblingStreamProvider provider,
  ) {
    return call(
      provider.stream,
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
  String? get name => r'bubblingStreamProvider';
}

/// See also [BubblingStream].
class BubblingStreamProvider
    extends AutoDisposeNotifierProviderImpl<BubblingStream, BubblingState<T>> {
  /// See also [BubblingStream].
  BubblingStreamProvider(
    Stream<T> stream,
  ) : this._internal(
          () => BubblingStream()..stream = stream,
          from: bubblingStreamProvider,
          name: r'bubblingStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bubblingStreamHash,
          dependencies: BubblingStreamFamily._dependencies,
          allTransitiveDependencies:
              BubblingStreamFamily._allTransitiveDependencies,
          stream: stream,
        );

  BubblingStreamProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.stream,
  }) : super.internal();

  final Stream<T> stream;

  @override
  BubblingState<T> runNotifierBuild(
    covariant BubblingStream notifier,
  ) {
    return notifier.build(
      stream,
    );
  }

  @override
  Override overrideWith(BubblingStream Function() create) {
    return ProviderOverride(
      origin: this,
      override: BubblingStreamProvider._internal(
        () => create()..stream = stream,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        stream: stream,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<BubblingStream, BubblingState<T>>
      createElement() {
    return _BubblingStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BubblingStreamProvider && other.stream == stream;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, stream.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BubblingStreamRef on AutoDisposeNotifierProviderRef<BubblingState<T>> {
  /// The parameter `stream` of this provider.
  Stream<T> get stream;
}

class _BubblingStreamProviderElement
    extends AutoDisposeNotifierProviderElement<BubblingStream, BubblingState<T>>
    with BubblingStreamRef {
  _BubblingStreamProviderElement(super.provider);

  @override
  Stream<T> get stream => (origin as BubblingStreamProvider).stream;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
