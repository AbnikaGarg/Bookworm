import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../components/custombutton.dart';
import '../../components/text_fields.dart';
import '../../utils/app_colors.dart';
import '../../utils/image_strings.dart';

class TransferFunds extends StatefulWidget {
  const TransferFunds({super.key});

  @override
  State<TransferFunds> createState() => _TransferFundsState();
}

class _TransferFundsState extends State<TransferFunds> {
  TextEditingController c1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        elevation: 1,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        title: const Text(
          "Transfer Fund",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 14.h),
            Text(
              "Transfer to",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  color: Color.fromRGBO(0, 0, 0, 1)),
            ),
            heightSpace5,
            MyTextField(
              hintText: "Enter UserId to which you want to transfer",
              color: AppColors.aquaColors,
            ),
            SizedBox(height: 14.h),
            Text(
              "Enter Amount to transfer",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  color: Color.fromRGBO(0, 0, 0, 1)),
            ),
            heightSpace5,
            MyTextField(
              hintText: "Enter Amount to transfer",
              color: AppColors.aquaColors,
            ),
            SizedBox(height: 14.h),
            Text(
              "Password",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  color: Color.fromRGBO(0, 0, 0, 1)),
            ),
            heightSpace5,
            MyTextField(
              hintText: "Please enter your password",
              color: AppColors.aquaColors,
            ),
            heightSpace50,
            Center(
              child: GestureDetector(
                onTap: () {},
                child: const CustomButton(
                  title1: "Transfer Funds",
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
