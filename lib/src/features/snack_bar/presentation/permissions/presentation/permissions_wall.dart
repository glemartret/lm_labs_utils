import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:permission_handler/permission_handler.dart';

@Deprecated('This is WIP')
class PermissionsWall extends HookWidget {
  final Permission permission;
  final Widget child;

  @Deprecated('This is WIP')
  const PermissionsWall({
    required this.permission,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final status = useState<PermissionStatus?>(null);
    final appLifecycleState = useAppLifecycleState();
    useEffect(
      () {
        unawaited(requestPermissions(status));

        return null;
      },
      [appLifecycleState],
    );

    return switch (status.value) {
      PermissionStatus.granted => child,
      PermissionStatus.permanentlyDenied => const Center(
          child: Text('Permission permanently denied'),
        ),
      null => const Center(child: CircularProgressIndicator()),
      _ => const Center(child: Text('Not implemented yet')),
    };
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Permission>('permission', permission));
  }

  Future<void> requestPermissions(
    ValueNotifier<PermissionStatus?> status,
  ) async {
    status.value = await permission.request();
    debugPrint('Permission status: ${status.value}');
  }
}
