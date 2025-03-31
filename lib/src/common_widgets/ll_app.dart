import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:lm_labs_utils/localization.dart';
import 'package:lm_labs_utils/src/utils/neutral_color_extension.dart';

class LLApp extends ConsumerWidget {
  final WidgetBuilder? _appBuilder;
  final FutureProvider<void> initAppProvider;
  final void Function(WidgetRef, FutureProvider<void>) onRetry;
  final WidgetBuilder loadingBuilder;
  final Widget Function(
    BuildContext context,
    Object error,
    StackTrace? stackTrace,
    VoidCallback onRetry,
  ) errorBuilder;
  final Iterable<Locale> supportedLocales;
  final Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates;
  final AutoDisposeProvider<RouterConfig<Object>>? _routerProvider;

  const LLApp({
    required WidgetBuilder appBuilder,
    required this.initAppProvider,
    this.supportedLocales = const [],
    this.localizationsDelegates = const [],
    super.key,
  })  : onRetry = defaultOnRetry,
        loadingBuilder = defaultLoadingBuilder,
        errorBuilder = defaultErrorBuilder,
        _routerProvider = null,
        _appBuilder = appBuilder;

  const LLApp.custom({
    required WidgetBuilder appBuilder,
    required this.initAppProvider,
    this.supportedLocales = const [],
    this.localizationsDelegates = const [],
    this.onRetry = defaultOnRetry,
    this.loadingBuilder = defaultLoadingBuilder,
    this.errorBuilder = defaultErrorBuilder,
    super.key,
  })  : _routerProvider = null,
        _appBuilder = appBuilder;

  const LLApp.router({
    required this.initAppProvider,
    required AutoDisposeProvider<RouterConfig<Object>> routerProvider,
    this.supportedLocales = const [],
    this.localizationsDelegates = const [],
    super.key,
  })  : onRetry = defaultOnRetry,
        loadingBuilder = defaultLoadingBuilder,
        errorBuilder = defaultErrorBuilder,
        _routerProvider = routerProvider,
        _appBuilder = null;

  @override
  Widget build(BuildContext context, WidgetRef ref) => I18n(
        supportedLocales: supportedLocales,
        localizationsDelegates: localizationsDelegates,
        child: switch (ref.watch(initAppProvider)) {
          AsyncError(error: final error, stackTrace: final stackTrace) =>
            errorBuilder(
              context,
              error,
              stackTrace,
              () => onRetry(ref, initAppProvider),
            ),
          AsyncLoading() => loadingBuilder(context),
          AsyncData(value: final _) ||
          AsyncValue() when _routerProvider != null =>
            _LLAppRouterWidget(routerProvider: _routerProvider),
          AsyncData(value: final _) ||
          AsyncValue() when _appBuilder != null =>
            _appBuilder(context),
          _ => errorBuilder(
              context,
              'Missing required parameters',
              null,
              () => onRetry(ref, initAppProvider),
            ),
        },
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
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
      )
      ..add(IterableProperty<Locale>('supportedLocales', supportedLocales))
      ..add(
        IterableProperty<LocalizationsDelegate>(
          'localizationsDelegates',
          localizationsDelegates,
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
        theme: AppTheme.buildTheme(Brightness.light),
        locale: I18n.locale,
        localizationsDelegates: I18n.localizationsDelegates,
        supportedLocales: I18n.supportedLocales,
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
  Widget build(BuildContext context) => MaterialApp(
        theme: AppTheme.buildTheme(Brightness.light),
        locale: I18n.locale,
        localizationsDelegates: I18n.localizationsDelegates,
        supportedLocales: I18n.supportedLocales,
        home: Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
}

class _LLAppRouterWidget extends ConsumerWidget {
  final AutoDisposeProvider<RouterConfig<Object>> routerProvider;

  const _LLAppRouterWidget({
    required this.routerProvider,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerConfig = ref.watch(routerProvider);

    return MaterialApp.router(
      theme: AppTheme.buildTheme(Brightness.light),
      locale: I18n.locale,
      localizationsDelegates: I18n.localizationsDelegates,
      supportedLocales: I18n.supportedLocales,
      routerConfig: routerConfig,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      DiagnosticsProperty<AutoDisposeProvider<RouterConfig<Object>>>(
        'routerProvider',
        routerProvider,
      ),
    );
  }
}
