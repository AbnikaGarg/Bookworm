import 'package:bookwormnew/controllers/splash_controller.dart';
import 'package:bookwormnew/utils/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ImagePath.backgroundscreen,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Align(
              alignment: Alignment.center,
              child: Image.asset(
                controller.image,
                width: 200,
              )),
        ],
      ),
    );
  }
}
