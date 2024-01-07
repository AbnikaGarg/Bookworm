import 'package:bookwormnew/bindings/bottombar_bindings.dart';
import 'package:bookwormnew/components/bottomnavigation.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Routes {
  static String home = '/home';

}

appRoutes() => [
  GetPage(
    name: Routes.home,
    binding: BottomBarBinding(),
    page: () =>  CustomBottomBar(),
  ),
];