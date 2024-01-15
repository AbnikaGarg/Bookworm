import 'package:bookwormnew/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void customSnackBar(String? message, {bool isError = true, int duration = 2}) {
  if (message != null && message.isNotEmpty) {
    Get.showSnackbar(GetSnackBar(
      backgroundColor: isError ? Colors.red : Colors.green,
      
      duration: Duration(seconds: duration),
      snackStyle: SnackStyle.FLOATING,
       messageText: Text(
          message.toString(),
          style: Get.theme.textTheme.bodyLarge!
              .copyWith(color: AppColors.whiteColor),
        ),
      forwardAnimationCurve: Curves.linearToEaseOut,
      snackPosition: SnackPosition.TOP,
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      borderRadius: 12,
      isDismissible: true,
      dismissDirection: DismissDirection.horizontal,
    ));
  }
}
