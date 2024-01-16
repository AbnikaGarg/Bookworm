import 'package:bookwormnew/controllers/bottombar_controller.dart';
import 'package:bookwormnew/controllers/dashboard_controller.dart';
import 'package:get/get.dart';

class BottomBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomBarController>(
      () => BottomBarController(),
    );
     Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
  }
}
