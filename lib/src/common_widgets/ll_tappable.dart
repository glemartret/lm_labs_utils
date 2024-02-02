import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lm_labs_utils/src/utils/future_easy_throttle.dart';

class LLTappable extends HookWidget {
  final Widget child;
  final Future<void> Function()? onTap;
  final Duration duration;
  final Widget Function(Widget) _builder;

  const LLTappable({
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

    return GestureDetector(
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
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(ObjectFlagProperty<Future<void> Function()?>.has('onTap', onTap))
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
