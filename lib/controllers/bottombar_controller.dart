import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarController extends GetxController {
  void changeTabIndex(int index) {
    tabIndex = index;
    debugPrint(index.toString());
    update();
  }

  var tabIndex = 0;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
