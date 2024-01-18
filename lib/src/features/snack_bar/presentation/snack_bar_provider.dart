import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'snack_bar_provider.g.dart';

@riverpod
class SnackBarNotifier extends _$SnackBarNotifier {
  @override
  SnackBar? build() => null;

  // ignore: use_setters_to_change_properties
  void set(SnackBar? value) => state = value;
}
