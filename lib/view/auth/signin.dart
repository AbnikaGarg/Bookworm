import 'package:bookwormnew/controllers/auth_controller.dart';
import 'package:bookwormnew/routes/routes.dart';
import 'package:bookwormnew/view/dashboard/dashbaord.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../components/bottomnavigation.dart';
import '../../components/custombutton.dart';
import '../../components/text_fields.dart';
import '../../utils/base_style.dart';
import '../../utils/form_validators.dart';
import '../../utils/image_strings.dart';
import 'signup.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AuthController>(builder: (controller) {
        return Stack(
          children: [
            Image.asset(
              ImagePath.backgroundscreen,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    heightSpace80,
                    Image.asset(
                      ImagePath.logo,
                      height: 80.h,
                    ),
                    heightSpace50,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "SIGN IN",
                        style: BaseStyle.orangeText24fw600,
                      ),
                    ),
                    heightSpace20,
                    CustomTextField(
                      labelTitle: "Username*",
                      suffixIcon: const Icon(
                        Icons.alternate_email,
                        size: 20,
                      ),
                      controller: controller.username,
                      validator: FieldValidator().emailValidator,
                    ),
                    heightSpace20,
                    CustomTextField(
                      labelTitle: "Password*",
                      suffixIcon: const Icon(
                        Icons.lock,
                        size: 20,
                      ),
                      controller: controller.password,
                      validator: FieldValidator().passwordValidator,
                    ),
                    heightSpace50,
                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          controller.login();
                        }
                      },
                      child: const CustomButton(
                        title1: "SIGN IN",
                      ),
                    ),
                    heightSpace20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          color: Colors.white,
                          width: Get.width * .21,
                        ),
                        heightSpace50,
                        Text(
                          "  Or Login With  ",
                          style: BaseStyle.whitetext14,
                        ),
                        Container(
                          height: 1,
                          color: Colors.white,
                          width: Get.width * .21,
                        ),
                      ],
                    ),
                    heightSpace10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        commonImage(imageUrl: ImagePath.googleImage),
                        widthSpace10,
                        commonImage(imageUrl: ImagePath.facebookImage),
                        widthSpace10,
                        commonImage(imageUrl: ImagePath.appleImage)
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?,",
                          style: BaseStyle.whitetext14,
                        ),
                        TextButton(
                            onPressed: () {
                              Get.toNamed(Routes.signup);
                            },
                            child: Text(
                              "Sign Up",
                              style: BaseStyle.orangeText14fw700,
                            ))
                      ],
                    ),
                    heightSpace20,
                  ],
                ),
              ),
            )
          ],
        );
      }),
    );
  }

  commonImage({imageUrl}) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imageUrl)),
          shape: BoxShape.circle),
    );
  }
}
