import 'package:bookwormnew/utils/base_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  final String? title1;
  const CustomButton({super.key, required this.title1});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40.h,
      width: Get.width * .8,
      decoration: BoxDecoration(
          color: const Color(0XFFE27329),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 1.5,
              offset: Offset(0, 0),
            )
          ]),
      child: Text(title1!, style: BaseStyle.whitetext16fw700),
    );
  }
}
