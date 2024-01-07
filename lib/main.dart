import 'package:bookwormnew/routes/routes.dart';
import 'package:bookwormnew/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/bottomnavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
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
        initialRoute: '/home',
        getPages: appRoutes(),
      ),
      designSize: const Size(375, 812),
    );
  }
}
