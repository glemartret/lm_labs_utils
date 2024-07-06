import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'value_builder.freezed.dart';

@freezed
sealed class ValueBuilder<T> with _$ValueBuilder {
  const factory ValueBuilder.context(
    T? Function(BuildContext context) builder,
  ) = _ValueBuilderContext;

  const factory ValueBuilder.ref(
    T? Function(Ref ref) builder,
  ) = _ValueBuilderRef;

  const factory ValueBuilder.value(
    T? value,
  ) = _ValueBuilderValue;

  const factory ValueBuilder.widgetRef(
    T? Function(WidgetRef ref) builder,
  ) = _ValueBuilderWidgetRef;
}

extension ValueBuilderX<T> on ValueBuilder<T> {
  T? switchValue({
    BuildContext? context,
    Ref? ref,
    WidgetRef? widgetRef,
  }) =>
      switch (this) {
        _ValueBuilderValue(:final value) => value,
        _ValueBuilderContext(:final builder) when context != null =>
          builder(context),
        _ValueBuilderWidgetRef(:final builder) when widgetRef != null =>
          builder(widgetRef),
        _ValueBuilderRef(:final builder) when ref != null => builder(ref),
        _ => null,
      };
}
