import 'package:dhruv_prac/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoadingOverlayService {
  void show({bool dark = false}) {
    EasyLoading.instance
      ..userInteractions = false
      ..dismissOnTap = false
      ..loadingStyle = EasyLoadingStyle.custom
      ..backgroundColor = Colors.transparent
      ..indicatorColor = Colors.transparent
      ..progressColor = Colors.transparent
      ..textColor = Colors.transparent;

    const opacity = 0.8;
    final maskColor = dark
        ? AppColors.appBlue.withOpacity(opacity)
        : AppColors.appWhite.withOpacity(opacity);

    EasyLoading.instance.maskColor = maskColor;
    EasyLoading.show(
        maskType: EasyLoadingMaskType.custom,
        indicator: const CircularProgressIndicator(
          color: AppColors.appBlue,
          strokeWidth: 2,
        ));
  }

  void hide() {
    EasyLoading.dismiss();
  }
}