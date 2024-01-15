import 'package:bookwormnew/bindings/shared_pref.dart';
import 'package:bookwormnew/controllers/auth_controller.dart';
import 'package:bookwormnew/service/api_client.dart';
import 'package:bookwormnew/service/auth_repo.dart';
import 'package:bookwormnew/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class IntialBindings extends Bindings {
  @override
  void dependencies() async {
    //common controller
    Get.lazyPut<SplashController>(() => SplashController());
    Get.lazyPut(
      () => AuthController(authRepo: AuthRepo(apiClient: Get.find())),
    );
    Get.lazyPut(() => ApiClient(appBaseUrl: AppConstant.baseurl));
  }
}
