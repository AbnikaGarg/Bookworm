import 'package:bookwormnew/utils/app_colors.dart';
import 'package:bookwormnew/utils/base_style.dart';
import 'package:bookwormnew/utils/image_strings.dart';
import 'package:bookwormnew/view/wallet/add_funds.dart';
import 'package:bookwormnew/view/wallet/components/transaction_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'transfer_funds.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _FundsHistoryState();
}

class _FundsHistoryState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).viewPadding.top;
    return Scaffold(
      body: Container(
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
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Afternoon",
                        style: GoogleFonts.montserrat(
                            fontSize: 13.sp,
                            color: const Color.fromRGBO(77, 77, 77, 1)),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Sarbjot Sameer",
                        style: GoogleFonts.montserrat(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromARGB(255, 35, 35, 35),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 30.h,
                    width: 30.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.whiteColor,
                    ),
                    child: const Icon(Icons.search),
                  ),
                ],
              ),
              heightSpace30,
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: const Color.fromRGBO(24, 24, 24, 1),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/bga.png",
                        ))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Available balance",
                              style: GoogleFonts.montserrat(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF909090)),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "\$ 126.99",
                              style: GoogleFonts.montserrat(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Image.asset(
                          "assets/images/wallet2.png",
                          height: 40,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const AddFunds());
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: AppColors.whiteColor)),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(
                                    Icons.add,
                                    size: 15,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                "Add Funds",
                                style: GoogleFonts.montserrat(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const TransferFunds());
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/addfund.svg",
                                height: 18,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                "Transfer Funds",
                                style: GoogleFonts.montserrat(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    heightSpace30,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent Transactions",
                          style: GoogleFonts.montserrat(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromARGB(255, 35, 35, 35),
                          ),
                        ),
                        Text(
                          "View all",
                          style: GoogleFonts.montserrat(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                    heightSpace10,
                    transactionData(amount: "+ 1500", status: "Success"),
                    transactionData(amount: "- 200", status: "Reject")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
