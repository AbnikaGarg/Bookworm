import 'package:bookwormnew/bindings/bottombar_bindings.dart';
import 'package:bookwormnew/components/bottomnavigation.dart';
import 'package:bookwormnew/controllers/splash_controller.dart';
import 'package:bookwormnew/view/auth/signin.dart';
import 'package:bookwormnew/view/auth/signup.dart';
import 'package:bookwormnew/view/splash/splash.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Routes {
  static String home = '/home';
  static String splash = '/';
  static String login = '/login';
  static String signup = '/signup';
}

appRoutes() => [
      GetPage(
        name: Routes.home,
        binding: BottomBarBinding(),
        page: () => CustomBottomBar(),
      ),
      GetPage(
        name: Routes.splash,
        page: () => SplashScreen(),
      ),
      GetPage(name: Routes.login, page: () => SignInScreen()),
      GetPage(
        name: Routes.signup,
        page: () => SignupScreen(),
      ),
    ];
