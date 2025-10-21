import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hooks_riverpod/misc.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:lm_labs_utils/localization.dart';
import 'package:lm_labs_utils/src/utils/neutral_color_extension.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class LLApp extends ConsumerWidget {
  final WidgetBuilder? _appBuilder;
  final ProviderListenable<AsyncValue<void>> initAppProvider;
  final VoidCallback onInitAppRetry;
  final Widget Function(BuildContext context, ThemeData? theme) loadingBuilder;
  final Widget Function(
    BuildContext context,
    Object error,
    StackTrace? stackTrace,
    VoidCallback onRetry,
    ThemeData? theme,
  )
  errorBuilder;
  final Iterable<Locale> supportedLocales;
  final Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates;
  final ProviderBase<RouterConfig<Object>>? _routerProvider;
  final ThemeData? theme;

  const LLApp({
    required WidgetBuilder appBuilder,
    required this.initAppProvider,
    required this.onInitAppRetry,
    this.supportedLocales = const [],
    this.localizationsDelegates = const [],
    this.theme,
    super.key,
  }) : loadingBuilder = defaultLoadingBuilder,
       errorBuilder = defaultErrorBuilder,
       _routerProvider = null,
       _appBuilder = appBuilder;

  const LLApp.custom({
    required WidgetBuilder appBuilder,
    required this.initAppProvider,
    required this.onInitAppRetry,
    this.supportedLocales = const [],
    this.localizationsDelegates = const [],
    this.loadingBuilder = defaultLoadingBuilder,
    this.errorBuilder = defaultErrorBuilder,
    this.theme,
    super.key,
  }) : _routerProvider = null,
       _appBuilder = appBuilder;

  const LLApp.router({
    required this.initAppProvider,
    required ProviderBase<RouterConfig<Object>> routerProvider,
    required this.onInitAppRetry,
    this.supportedLocales = const [],
    this.localizationsDelegates = const [],
    this.theme,
    super.key,
  }) : loadingBuilder = defaultLoadingBuilder,
       errorBuilder = defaultErrorBuilder,
       _routerProvider = routerProvider,
       _appBuilder = null;

  @override
  Widget build(BuildContext context, WidgetRef ref) => I18n(
    supportedLocales: supportedLocales,
    localizationsDelegates: localizationsDelegates,
    child: switch (ref.watch(initAppProvider)) {
      AsyncError(error: final error, stackTrace: final stackTrace) =>
        errorBuilder(context, error, stackTrace, onInitAppRetry, theme),
      AsyncLoading() => loadingBuilder(context, theme),
      AsyncData(value: final _) || AsyncValue() when _routerProvider != null =>
        _LLAppRouterWidget(routerProvider: _routerProvider, theme: theme),
      AsyncData(value: final _) ||
      AsyncValue() when _appBuilder != null => _appBuilder(context),
      _ => errorBuilder(
        context,
        'Missing required parameters',
        null,
        onInitAppRetry,
        theme,
      ),
    },
  );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        ObjectFlagProperty<
          Widget Function(BuildContext context, ThemeData? theme)
        >.has('loadingBuilder', loadingBuilder),
      )
      ..add(
        ObjectFlagProperty<
          Widget Function(
            BuildContext context,
            Object error,
            StackTrace? stackTrace,
            VoidCallback onRetry,
            ThemeData? theme,
          )
        >.has('errorBuilder', errorBuilder),
      )
      ..add(
        ObjectFlagProperty<VoidCallback>.has('onInitAppRetry', onInitAppRetry),
      )
      ..add(IterableProperty<Locale>('supportedLocales', supportedLocales))
      ..add(
        IterableProperty<LocalizationsDelegate>(
          'localizationsDelegates',
          localizationsDelegates,
        ),
      )
      ..add(DiagnosticsProperty<ThemeData?>('theme', theme))
      ..add(
        DiagnosticsProperty<ProviderListenable<AsyncValue<void>>>(
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
    ThemeData? theme,
  ) => _LLAppErrorWidget(
    message: error.toString(),
    onRetry: onRetry,
    theme: theme,
  );

  static Widget defaultLoadingBuilder(BuildContext context, ThemeData? theme) =>
      _LLAppLoadingWidget(theme: theme);
}

class _LLAppErrorWidget extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;
  final ThemeData? theme;

  const _LLAppErrorWidget({
    required this.message,
    required this.onRetry,
    this.theme,
  });

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: theme ?? AppTheme.buildTheme(Brightness.light),
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
            ElevatedButton(onPressed: onRetry, child: Text('Retry'.i18n)),
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
      ..add(ObjectFlagProperty<VoidCallback>.has('onRetry', onRetry))
      ..add(DiagnosticsProperty<ThemeData?>('theme', theme));
  }
}

class _LLAppLoadingWidget extends StatelessWidget {
  final ThemeData? theme;

  const _LLAppLoadingWidget({this.theme});

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: theme ?? AppTheme.buildTheme(Brightness.light),
    locale: I18n.locale,
    localizationsDelegates: I18n.localizationsDelegates,
    supportedLocales: I18n.supportedLocales,
    home: Scaffold(body: Center(child: CircularProgressIndicator())),
  );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<ThemeData?>('theme', theme));
  }
}

class _LLAppRouterWidget extends ConsumerWidget {
  final ThemeData? theme;
  final ProviderBase<RouterConfig<Object>> routerProvider;

  const _LLAppRouterWidget({required this.routerProvider, this.theme});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerConfig = ref.watch(routerProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: theme ?? AppTheme.buildTheme(Brightness.light),
      locale: I18n.locale,
      localizationsDelegates: I18n.localizationsDelegates,
      supportedLocales: I18n.supportedLocales,
      routerConfig: routerConfig,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        DiagnosticsProperty<ProviderBase<RouterConfig<Object>>>(
          'routerProvider',
          routerProvider,
        ),
      )
      ..add(DiagnosticsProperty<ThemeData?>('theme', theme));
  }
}
