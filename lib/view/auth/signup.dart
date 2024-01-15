import 'package:bookwormnew/utils/app_colors.dart';
import 'package:bookwormnew/view/auth/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../components/custombutton.dart';
import '../../components/text_fields.dart';
import '../../utils/base_style.dart';
import '../../utils/form_validators.dart';
import '../../utils/image_strings.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  heightSpace80,
                  Image.asset(
                    ImagePath.logo,
                    height: 80.h,
                  ),
                  heightSpace40,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "SIGN UP",
                      style: BaseStyle.orangeText24fw600,
                    ),
                  ),
                  heightSpace10,
                  CustomTextField(
                    labelTitle: "User Name*",
                    suffixIcon: const Icon(
                      Icons.person,
                      size: 20,
                    ),
                    controller: nameController,
                    validator: FieldValidator().usernameValidator,
                  ),
                  heightSpace20,
                  CustomTextField(
                    labelTitle: "Email ID*",
                    suffixIcon: const Icon(
                      Icons.alternate_email,
                      size: 20,
                    ),
                    controller: emailController,
                    validator: FieldValidator().emailValidator,
                  ),
                  heightSpace20,
                  CustomTextField(
                    labelTitle: "Password*",
                    suffixIcon: const Icon(
                      Icons.lock,
                      size: 20,
                    ),
                    controller: passwordController,
                    validator: FieldValidator().passwordValidator,
                  ),
                  heightSpace10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Transform.scale(
                          scale: .8,
                          child: Checkbox(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: false,
                              side: BorderSide(color: AppColors.whiteColor),
                              visualDensity:
                                  VisualDensity(horizontal: -4, vertical: -4),
                              onChanged: (val) {})),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: " I read & agree to",
                              style: BaseStyle.whitetext14),
                          TextSpan(
                              text: " terms and conditions",
                              style: BaseStyle.orangeText14)
                        ]),
                      ),
                    ],
                  ),
                  heightSpace30,
                  GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        print("Validated");
                        Get.to(() => const SignInScreen());
                      } else {
                        print("Validated");
                      }
                    },
                    child: const CustomButton(
                      title1: "SIGN UP",
                    ),
                  ),
                  heightSpace20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1,
                        color: Colors.white,
                        width: Get.width * .20,
                      ),
                      heightSpace50,
                      Text(
                        "   Or Connect With   ",
                        style: BaseStyle.whitetext14,
                      ),
                      Container(
                        height: 1,
                        color: Colors.white,
                        width: Get.width * .20,
                      ),
                    ],
                  ),
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
                        "Already have an account?",
                        style: BaseStyle.whitetext14,
                      ),
                      TextButton(
                          onPressed: () {
                            Get.to(() => const SignInScreen());
                          },
                          child: Text(
                            "Sign In",
                            style: BaseStyle.orangeText16fw500,
                          ))
                    ],
                  ),
                  heightSpace10,
                ],
              ),
            ),
          )
        ],
      ),
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
