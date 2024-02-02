import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18n_extension/i18n_widget.dart';

void useI18n() {
  final context = useContext();
  final deviceLocale =
      Localizations.maybeLocaleOf(context) ?? const Locale('en');

  Future(() {
    I18n.of(context).locale = deviceLocale;
  });
  return;
}
