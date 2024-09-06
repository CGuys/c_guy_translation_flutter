import 'package:c_guy_translation_flutter/log/log.dart';
import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';

OverlayEntry? _logScreenOverlay;

void showLogScreenOverlay(BuildContext context) {
  if (_logScreenOverlay != null) return;
  final overlayState = Overlay.of(context);
  final overlayEntry = OverlayEntry(builder: (context) {
    return LogScreenButton(initX: 20, initY: 100);
  });
  overlayState.insert(overlayEntry);
  _logScreenOverlay = overlayEntry;
}

void hideLogScreenOverlay(BuildContext context) {
  final overlay = _logScreenOverlay;
  _logScreenOverlay = null;

  if (overlay == null) return;
  overlay.remove();
}

class LogScreenButton extends StatefulWidget {
  const LogScreenButton({this.initX, this.initY, super.key});
  final double? initX;
  final double? initY;

  @override
  State<LogScreenButton> createState() => _LogScreenButtonState();
}

class _LogScreenButtonState extends State<LogScreenButton> {
  double right = 0;
  double top = 0;

  @override
  void initState() {
    super.initState();
    right = widget.initX ?? 0;
    top = widget.initY ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      top: top,
      child: GestureDetector(
        onDoubleTap: () => _logScreenOverlay?.remove(),
        onPanUpdate: (detail) {
          setState(() {
            right -= detail.delta.dx;
            top += detail.delta.dy;
          });
        },
        child: LogScreenWrapper(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.black38,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.adb, color: Colors.black87),
          ),
        ),
      ),
    );
  }
}

class LogScreenWrapper extends StatelessWidget {
  const LogScreenWrapper({
    this.style,
    this.duration = const Duration(seconds: 5),
    required this.child,
    super.key,
  });

  final ButtonStyle? style;
  final Duration duration;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context, rootNavigator: true).push(
          MaterialPageRoute(
            builder: (context) {
              return TalkerScreen(appBarTitle: '日志面板', talker: talker);
            },
          ),
        );
      },
      style: style,
      child: child,
    );
  }
}
