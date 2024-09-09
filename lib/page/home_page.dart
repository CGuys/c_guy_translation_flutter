import 'package:c_guy_translation_flutter/component/home_body.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

/**
 * @Author Cheng Pan
 * @Data 2024/9/2.
 */
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      body: Stack(
        children: [
          const HomeBody(),
          Positioned(
            top: 0,
            right: 0,
            child: InkWell(
              onTap: () => windowManager.close(),
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              child: const SizedBox(
                width: 50,
                height: 50,
                child: Icon(Icons.close_rounded),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
