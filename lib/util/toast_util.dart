import 'package:flutter/widgets.dart';
import 'package:toastification/toastification.dart';

void showToast(String message) {
  toastification.show(
    title: Text(message),
    style: ToastificationStyle.flatColored,
    alignment: Alignment.bottomLeft,
    showProgressBar: false,
    autoCloseDuration: const Duration(seconds: 3),
  );
}
