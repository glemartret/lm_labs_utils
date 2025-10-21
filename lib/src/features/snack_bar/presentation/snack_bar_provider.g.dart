// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snack_bar_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SnackBarNotifier)
const snackBarProvider = SnackBarNotifierProvider._();

final class SnackBarNotifierProvider
    extends $NotifierProvider<SnackBarNotifier, SnackBar?> {
  const SnackBarNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'snackBarProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$snackBarNotifierHash();

  @$internal
  @override
  SnackBarNotifier create() => SnackBarNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SnackBar? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SnackBar?>(value),
    );
  }
}

String _$snackBarNotifierHash() => r'bf9152352188e3649da6c773f2df704f0a6f1ea4';

abstract class _$SnackBarNotifier extends $Notifier<SnackBar?> {
  SnackBar? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SnackBar?, SnackBar?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SnackBar?, SnackBar?>,
              SnackBar?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
