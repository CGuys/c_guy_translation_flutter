import 'dart:async';

import 'package:c_guy_translation_flutter/page/main_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart' as flutter_acrylic;

bool get isDesktop {
  if (kIsWeb) return false;
  return [
    TargetPlatform.windows,
    TargetPlatform.linux,
    TargetPlatform.macOS,
  ].contains(defaultTargetPlatform);
}

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    if (!kIsWeb &&
        [
          TargetPlatform.windows,
          TargetPlatform.android,
        ].contains(defaultTargetPlatform)) {}

    if (isDesktop) {
      await flutter_acrylic.Window.initialize();
      windowManager.waitUntilReadyToShow().then((_) async {
        await windowManager.ensureInitialized();
        await windowManager.setTitleBarStyle(
          TitleBarStyle.hidden,
          windowButtonVisibility: true,
        );
        await windowManager.setBackgroundColor(Colors.transparent);
        await windowManager.setMinimumSize(const Size(500, 600));
        await windowManager.show();
        await windowManager.setSkipTaskbar(false);
      });
    }

    runApp(const MainApp());
  }, (Object error, StackTrace stack) {
    // talker.handle(error, stack, 'Uncaught app exception');
  });
}
