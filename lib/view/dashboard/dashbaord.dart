import 'dart:convert';

import 'package:bookwormnew/bindings/shared_pref.dart';
import 'package:bookwormnew/controllers/dashboard_controller.dart';
import 'package:bookwormnew/models/LoginResponse.dart';
import 'package:bookwormnew/utils/app_colors.dart';
import 'package:bookwormnew/utils/base_style.dart';
import 'package:bookwormnew/utils/image_strings.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      drawer: const SidebaseScreen(),
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        centerTitle: false,
        // leading: const Icon(Icons.menu),
        title: const Text(
          "Dashboard",
        ),
      ),
      body: GetBuilder<DashboardController>(builder: (controller) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white,
                  const Color(0x56E27329).withOpacity(0.4),
                ]),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        ImagePath.dashboardImage,
                        fit: BoxFit.contain,
                        width: double.maxFinite,
                        height: 240.h,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 60.h,
                        width: 60.h,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green, width: 3),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(ImagePath.profile),
                                fit: BoxFit.contain)),
                      ),
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 65.h,
                        ),
                        customText(data: "User 123", txtcolor: Colors.white),
                        heightSpace3,
                        customText(
                            data: "User ID: 1234567", txtcolor: Colors.white),
                        heightSpace3,
                        customText(
                            data: "Sponser ID:123456", txtcolor: Colors.white),
                        heightSpace3,
                        Text(
                          "Fresher (0%)",
                          style: BaseStyle.whitetext14fw600
                              .copyWith(color: AppColors.color1),
                        ),
                        heightSpace3,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.calendar_month,
                              color: Colors.white,
                            ),
                            widthSpace10,
                            Text("2023-05-01",
                                style: BaseStyle.whitetext14fw600),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    child: GridView(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 12.w,
                            mainAxisSpacing: 14.h,
                            crossAxisCount: 2,
                            childAspectRatio: 16 / 8),
                        children: [
                          customBox(
                            title1: "Activation wallet",
                            title2:
                                "${controller.wallet!.activationWallet} USDT",
                            conColor1: const Color(0XFFE27329),
                            concolor2: const Color(0XFFE27329),
                            myicon: Icon(
                              Icons.account_balance_wallet,
                              color: Colors.white,
                              size: 18.sp,
                            ),
                          ),
                          customBox(
                            title1: "Income wallet",
                            title2: "${controller.wallet!.incomeWallet} USDT",
                            conColor1: const Color(0XFFFFDE59),
                            concolor2: const Color(0XFFFFDE59),
                            myicon: Icon(
                              Icons.account_balance_wallet,
                              color: Colors.black,
                              size: 18.sp,
                            ),
                          ),
                          customBox(
                            title1: "Level Income",
                            title2: "${controller.wallet!.levelIncome} USDT",
                            conColor1: const Color(0xFF07A0F6),
                            concolor2: const Color(0xFF07A0F6),
                            myicon: Icon(
                              Icons.account_balance_wallet,
                              color: Colors.white,
                              size: 18.sp,
                            ),
                          ),
                          customBox(
                            title1: "Generation Income",
                            title2:
                                "${controller.wallet!.generationIncome} USDT",
                            conColor1: const Color(0xFFC61834),
                            concolor2: const Color(0xFFC61834),
                            myicon: const Icon(
                              Icons.account_balance_wallet,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                          customBox(
                            title1: "Total Income",
                            title2: "${controller.wallet!.totalIncome} USDT",
                            conColor1: const Color(0xFF07A0F6),
                            concolor2: const Color(0xFF07A0F6),
                            myicon: Icon(
                              Icons.account_balance_wallet,
                              color: Colors.white,
                              size: 18.sp,
                            ),
                          ),
                          customBox(
                            title1: "Team Business",
                            title2: "${controller.wallet!.teamBusiness} USDT",
                            conColor1: const Color(0xFFC61834),
                            concolor2: const Color(0xFFC61834),
                            myicon: Icon(
                              Icons.account_balance_wallet,
                              color: Colors.white,
                              size: 18.sp,
                            ),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  customText({data, txtcolor}) {
    return Text(
      data,
      style: BaseStyle.whitetext14fw600,
    );
  }

  customBox({title1, title2, myicon, conColor1, concolor2}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22), color: Colors.black),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(top: 16.h, left: 10.w),
                  child: Text(title1,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: GoogleFonts.montserrat(
                        color: const Color(0xffffffff),
                        fontSize: 15,
                        height: 0,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(22),
                        topRight: Radius.circular(22)),
                    color: conColor1),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 8.w,
              ),
              Container(
                  height: 25.h,
                  width: 25.h,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: concolor2),
                  child: myicon),
              SizedBox(
                width: 10.w,
              ),
              Flexible(
                child: Text(title2,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.montserrat(
                      color: const Color(0xffffffff),
                      fontSize: 15,
                      height: 0,
                      fontWeight: FontWeight.w700,
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
