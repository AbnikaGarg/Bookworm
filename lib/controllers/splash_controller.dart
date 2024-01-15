import 'dart:async';
import 'package:bookwormnew/bindings/shared_pref.dart';
import 'package:bookwormnew/routes/routes.dart';
import 'package:bookwormnew/utils/image_strings.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  SplashController();
  final image = ImagePath.logo;

  @override
  void onReady() {
    super.onReady();
    Timer(const Duration(seconds: 2), () {
      if (PreferenceUtils.isLoggedIn()) {
        Get.offAllNamed(Routes.home);
      } else {
        Get.offAllNamed(Routes.login);
      }
    });
  }
}
