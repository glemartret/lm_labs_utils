import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/misc.dart';

part 'value_builder.freezed.dart';

/// Signature of `ref.read` / `ref.watch`.
typedef ProviderReader = StateT Function<StateT>(
  ProviderListenable<StateT> provider,
);

@freezed
sealed class ValueBuilder<T> with _$ValueBuilder {
  const factory ValueBuilder.context(
    T? Function(BuildContext context) builder,
  ) = _ValueBuilderContext;

  const factory ValueBuilder.ref(
    T? Function(ProviderReader reader) builder,
  ) = _ValueBuilderRef;

  const factory ValueBuilder.value(
    T? value,
  ) = _ValueBuilderValue;
}

extension ValueBuilderX<T> on ValueBuilder<T> {
  T? switchValue({
    BuildContext? context,
    ProviderReader? reader,
  }) => switch (this) {
    _ValueBuilderValue(:final value) => value,
    _ValueBuilderContext(:final builder) when context != null => builder(
      context,
    ),
    _ValueBuilderRef(:final builder) when reader != null => builder(reader),
    _ => null,
  };
}
