import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lm_labs_utils/src/utils/future_easy_throttle.dart';

class LLTappable extends HookWidget {
  final Widget child;
  final FutureOr<void> Function()? onTap;
  final Duration duration;
  final Widget Function(Widget) _builder;

  factory LLTappable({
    required Widget child,
    Key? key,
    FutureOr<void> Function()? onTap,
    Duration duration = const Duration(milliseconds: 500),
  }) =>
      LLTappable.constrained(
        key: key,
        duration: duration,
        onTap: onTap,
        child: child,
      );

  const LLTappable.constrained({
    required this.child,
    this.onTap,
    this.duration = const Duration(milliseconds: 500),
    super.key,
  }) : _builder = LLTappable._constrainedBuilder;

  const LLTappable.expand({
    required this.child,
    this.onTap,
    this.duration = const Duration(milliseconds: 500),
    super.key,
  }) : _builder = LLTappable._simpleBuilder;

  @override
  Widget build(BuildContext context) {
    final isProcessing = useState(false);

    return MouseRegion(
      cursor: isProcessing.value
          ? SystemMouseCursors.wait
          : (onTap != null)
              ? SystemMouseCursors.click
              : MouseCursor.defer,
      child: GestureDetector(
        onTap: isProcessing.value
            ? null
            : () async {
                isProcessing.value = true;
                await FutureEasyThrottle.throttle(
                  key.toString(),
                  duration,
                  () async => onTap?.call(),
                );
                isProcessing.value = false;
              },
        child: _builder(child),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(ObjectFlagProperty<FutureOr<void> Function()?>.has('onTap', onTap))
      ..add(DiagnosticsProperty<Duration>('duration', duration));
  }

  static Widget _constrainedBuilder(Widget child) => ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 48,
          minHeight: 48,
        ),
        child: child,
      );

  static Widget _simpleBuilder(Widget child) => child;
}
