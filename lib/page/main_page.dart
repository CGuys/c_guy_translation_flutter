import 'package:c_guy_translation_flutter/page/home_page.dart';
import 'package:flutter/material.dart';

/**
 * @Author Cheng Pan
 * @Data 2024/9/2.
 */
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.transparent,
      home: HomePage(),
    );
  }
}
