import 'package:bookwormnew/utils/app_colors.dart';
import 'package:bookwormnew/utils/base_style.dart';
import 'package:bookwormnew/utils/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IncomeWallet extends StatelessWidget {
  const IncomeWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white,
                    const Color(0x56E27329).withOpacity(0.4),
                  ]),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  height: 55.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.arrow_back_ios_new,
                        size: 18,
                      ),
                      widthSpace10,
                      Text(
                        "Income Wallet",
                        style: BaseStyle.blackText16fw600,
                      ),
                    ],
                  ),
                ),
                heightSpace20,
                Card(
                  elevation: 3,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              spreadRadius: -8,
                              blurStyle: BlurStyle.normal)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Balance in your Income Wallet (USDT)",
                            style: BaseStyle.orangeText14,
                          ),
                          heightSpace20,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Amount: 1,599.20",
                                style: BaseStyle.blackText16fw600,
                              ),
                              Container(
                                height: 30.h,
                                width: 110.w,
                                alignment: Alignment.center,
                                child: Text(
                                  "WITHDRAWAL",
                                  style: BaseStyle.whitetext11,
                                ),
                                decoration: BoxDecoration(
                                    color: AppColors.color1,
                                    borderRadius: BorderRadius.circular(10)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                heightSpace10,
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  // color: Colors.amber,
                  height: 55.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.arrow_back_ios_new,
                        size: 18,
                      ),
                      widthSpace10,
                      Text(
                        "Transaction History",
                        style: BaseStyle.blackText16fw600,
                      ),
                    ],
                  ),
                ),
                heightSpace10,
                Card(
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              spreadRadius: -8,
                              blurStyle: BlurStyle.normal)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Withdraw",
                                style: BaseStyle.orangeText14,
                              ),
                              Text(
                                '-500',
                                style: BaseStyle.orangeText14,
                              ),
                            ],
                          ),
                          Text(
                            "Transaction Id: 1234567890",
                            style: BaseStyle.blackText14fw400,
                          ),
                          Text(
                            "12 Oct 2023 - 09:15PM",
                            style: BaseStyle.blackText14fw400,
                          ),
                          heightSpace10,
                          const Divider(),
                          heightSpace10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Add Money To Wallet",
                                style: BaseStyle.geenText14fw600,
                              ),
                              Text(
                                "+ 500",
                                style: BaseStyle.geenText14fw600,
                              ),
                            ],
                          ),
                          Text(
                            "12 Oct 2023 - 09:15PM",
                            style: BaseStyle.blackText14fw400,
                          ),
                          Text(
                            "12 Oct 2023 - 09:15PM",
                            style: BaseStyle.blackText14fw400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
