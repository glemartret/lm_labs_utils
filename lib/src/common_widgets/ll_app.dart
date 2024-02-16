import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lm_labs_utils/localization.dart';

class LLApp extends ConsumerWidget {
  final WidgetBuilder appBuilder;
  final FutureProvider<void> initAppProvider;
  final void Function(WidgetRef, FutureProvider<void>) onRetry;
  final WidgetBuilder loadingBuilder;
  final Widget Function(
    BuildContext context,
    Object error,
    StackTrace? stackTrace,
    VoidCallback onRetry,
  ) errorBuilder;

  const LLApp({
    required this.appBuilder,
    required this.initAppProvider,
    super.key,
  })  : onRetry = defaultOnRetry,
        loadingBuilder = defaultLoadingBuilder,
        errorBuilder = defaultErrorBuilder;

  const LLApp.custom({
    required this.appBuilder,
    required this.initAppProvider,
    super.key,
    this.onRetry = defaultOnRetry,
    this.loadingBuilder = defaultLoadingBuilder,
    this.errorBuilder = defaultErrorBuilder,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) =>
      switch (ref.watch(initAppProvider)) {
        AsyncError(error: final error, stackTrace: final stackTrace) =>
          errorBuilder(
            context,
            error,
            stackTrace,
            () => onRetry(ref, initAppProvider),
          ),
        AsyncLoading() => loadingBuilder(context),
        AsyncData(value: final _) || AsyncValue() => appBuilder(context),
      };

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        ObjectFlagProperty<WidgetBuilder>.has('appBuilder', appBuilder),
      )
      ..add(
        ObjectFlagProperty<WidgetBuilder>.has(
          'loadingBuilder',
          loadingBuilder,
        ),
      )
      ..add(
        ObjectFlagProperty<
            Widget Function(
              BuildContext context,
              Object error,
              StackTrace? stackTrace,
              VoidCallback onRetry,
            )>.has('errorBuilder', errorBuilder),
      )
      ..add(
        ObjectFlagProperty<
            void Function(
              WidgetRef p1,
              FutureProvider<void> p2,
            )>.has('onRetry', onRetry),
      )
      ..add(
        DiagnosticsProperty<FutureProvider<void>>(
          'initAppProvider',
          initAppProvider,
        ),
      );
  }

  static Widget defaultErrorBuilder(
    BuildContext context,
    Object error,
    StackTrace? stackTrace,
    VoidCallback onRetry,
  ) =>
      _LLAppErrorWidget(
        message: error.toString(),
        onRetry: onRetry,
      );

  static Widget defaultLoadingBuilder(BuildContext context) =>
      const _LLAppLoadingWidget();

  static void defaultOnRetry(
    WidgetRef ref,
    FutureProvider<void> initAppProvider,
  ) {
    ref.invalidate(initAppProvider);
  }
}

class _LLAppErrorWidget extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _LLAppErrorWidget({
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(message, style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: onRetry,
                  child: Text('Retry'.i18n),
                ),
              ],
            ),
          ),
        ),
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('message', message))
      ..add(ObjectFlagProperty<VoidCallback>.has('onRetry', onRetry));
  }
}

class _LLAppLoadingWidget extends StatelessWidget {
  const _LLAppLoadingWidget();

  @override
  Widget build(BuildContext context) => const MaterialApp(
        home: Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
}
