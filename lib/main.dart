import 'package:bookwormnew/bindings/intial_bindings.dart';
import 'package:bookwormnew/bindings/shared_pref.dart';
import 'package:bookwormnew/routes/routes.dart';
import 'package:bookwormnew/service/api_client.dart';
import 'package:bookwormnew/utils/app_colors.dart';
import 'package:bookwormnew/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/bottomnavigation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferenceUtils.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        title: 'BookWorm',
        theme: ThemeData(
            //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            //useMaterial3: true,
            appBarTheme: AppBarTheme(
          backgroundColor: AppColors.whiteColor,
          iconTheme: IconThemeData(color: AppColors.blackColor),
          titleTextStyle: GoogleFonts.montserrat(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.blackColor),
        )),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splash,
        getPages: appRoutes(),
        initialBinding: IntialBindings(),
        transitionDuration: Duration(milliseconds: 300),
      ),
      designSize: const Size(375, 812),
    );
  }
}
