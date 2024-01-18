// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LLAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? trailing;

  const LLAppBar({
    super.key,
    this.leading,
    this.title,
    this.trailing,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.topCenter,
        child: SafeArea(
          bottom: false,
          child: ClipRect(
            child: _LLNavigationToolbar(
              leading: leading,
              middle: title,
              trailing: trailing,
            ),
          ),
        ),
      );
}

/// [_LLNavigationToolbar] is a layout helper to position 3 widgets or
/// groups of widgets along a horizontal axis that's sensible for an
/// application's navigation bar such as in Material Design and in iOS.
///
/// The [leading] and [trailing] widgets occupy the edges of the widget with
/// reasonable size constraints while the [middle] widget occupies the remaining
/// space in either a center aligned or start aligned fashion.
///
/// Either directly use the themed app bars such as the Material [AppBar] or
/// the iOS [CupertinoNavigationBar] or wrap this widget with more theming
/// specifications for your own custom app bar.
class _LLNavigationToolbar extends StatelessWidget {
  /// The default spacing around the [middle] widget in dp.
  static const double kMiddleSpacing = 16;

  /// Widget to place at the start of the horizontal toolbar.
  final Widget? leading;

  /// Widget to place in the middle of the horizontal toolbar, occupying
  /// as much remaining space as possible.
  final Widget? middle;

  /// Widget to place at the end of the horizontal toolbar.
  final Widget? trailing;

  /// Creates a widget that lays out its children in a manner suitable for a
  /// toolbar.
  const _LLNavigationToolbar({
    this.leading,
    this.middle,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    assert(
      debugCheckHasDirectionality(context),
      '_LLNavigationToolbar must be placed in a directionality widget.',
    );
    final textDirection = Directionality.of(context);
    return CustomMultiChildLayout(
      delegate: _LLToolbarLayout(
        centerMiddle: true,
        middleSpacing: kMiddleSpacing,
        textDirection: textDirection,
      ),
      children: <Widget>[
        if (leading != null)
          LayoutId(id: _LLToolbarSlot.leading, child: leading!),
        if (middle != null) LayoutId(id: _LLToolbarSlot.middle, child: middle!),
        if (trailing != null)
          LayoutId(id: _LLToolbarSlot.trailing, child: trailing!),
      ],
    );
  }
}

class _LLToolbarLayout extends MultiChildLayoutDelegate {
  // If false the middle widget should be start-justified within the space
  // between the leading and trailing widgets.
  // If true the middle widget is centered within the toolbar (not within the
  // horizontal space between the leading and trailing widgets).
  final bool centerMiddle;

  /// The spacing around middle widget on horizontal axis.
  final double middleSpacing;

  final TextDirection textDirection;

  _LLToolbarLayout({
    required this.centerMiddle,
    required this.middleSpacing,
    required this.textDirection,
  });

  @override
  void performLayout(Size size) {
    const leadingWidth = 0.0;
    var trailingWidth = 0.0;

    if (hasChild(_LLToolbarSlot.leading)) {
      final constraints = BoxConstraints.loose(size);
      final leadingSize = layoutChild(_LLToolbarSlot.leading, constraints);
      final double leadingX;
      switch (textDirection) {
        case TextDirection.rtl:
          leadingX = size.width - leadingWidth;
        case TextDirection.ltr:
          leadingX = 0.0;
      }
      final leadingY = (size.height - leadingSize.height) / 2.0;
      positionChild(_LLToolbarSlot.leading, Offset(leadingX, leadingY));
    }

    if (hasChild(_LLToolbarSlot.trailing)) {
      final constraints = BoxConstraints.loose(size);
      final trailingSize = layoutChild(_LLToolbarSlot.trailing, constraints);
      final double trailingX;
      switch (textDirection) {
        case TextDirection.rtl:
          trailingX = 0.0;
        case TextDirection.ltr:
          trailingX = size.width - trailingSize.width;
      }
      final trailingY = (size.height - trailingSize.height) / 2.0;
      trailingWidth = trailingSize.width;
      positionChild(_LLToolbarSlot.trailing, Offset(trailingX, trailingY));
    }

    if (hasChild(_LLToolbarSlot.middle)) {
      final double maxWidth = math.max(
        size.width - leadingWidth - trailingWidth - middleSpacing * 2.0,
        0,
      );
      final constraints =
          BoxConstraints.loose(size).copyWith(maxWidth: maxWidth);
      final middleSize = layoutChild(_LLToolbarSlot.middle, constraints);

      final middleStartMargin = leadingWidth + middleSpacing;
      var middleStart = middleStartMargin;
      final middleY = (size.height - middleSize.height) / 2.0;
      // If the centered middle will not fit between the leading and trailing
      // widgets, then align its left or right edge with the adjacent boundary.
      if (centerMiddle) {
        middleStart = (size.width - middleSize.width) / 2.0;
        if (middleStart + middleSize.width > size.width - trailingWidth) {
          middleStart =
              size.width - trailingWidth - middleSize.width - middleSpacing;
        } else if (middleStart < middleStartMargin) {
          middleStart = middleStartMargin;
        }
      }

      final double middleX;
      switch (textDirection) {
        case TextDirection.rtl:
          middleX = size.width - middleSize.width - middleStart;
        case TextDirection.ltr:
          middleX = middleStart;
      }

      positionChild(_LLToolbarSlot.middle, Offset(middleX, middleY));
    }
  }

  @override
  bool shouldRelayout(_LLToolbarLayout oldDelegate) =>
      oldDelegate.centerMiddle != centerMiddle ||
      oldDelegate.middleSpacing != middleSpacing ||
      oldDelegate.textDirection != textDirection;
}

enum _LLToolbarSlot {
  leading,
  middle,
  trailing,
}
