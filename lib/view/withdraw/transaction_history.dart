import 'package:bookwormnew/utils/app_colors.dart';
import 'package:bookwormnew/utils/base_style.dart';
import 'package:bookwormnew/utils/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class IncomeWallet extends StatelessWidget {
  const IncomeWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text(
          "Income Wallet",
          style: BaseStyle.blackText16fw600,
        ),
      ),
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
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightSpace100,
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Balance in your Income Wallet (USDT)",
                        style: BaseStyle.orangeText16fw600,
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
                            decoration: BoxDecoration(
                                color: AppColors.color1,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "Withdrawal",
                              style: BaseStyle.whitetext12fw600,
                            ),
                          ),
                        ],
                      ),
                      heightSpace5
                    ],
                  ),
                ),
              ),
              heightSpace10,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Transaction History",
                  style: BaseStyle.blackText16fw600,
                ),
              ),
              heightSpace10,
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 4,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Withdraw",
                            style: BaseStyle.redText14fw600,
                          ),
                          Text(
                            '-500',
                            style: BaseStyle.redText14fw600,
                          ),
                        ],
                      ),
                      heightSpace5,
                      Text("Transaction Id: 1234567890",
                          style: BaseStyle.blackText12fw400),
                      Text(
                        "12 Oct 2023 - 09:15PM",
                        style: BaseStyle.blackText12fw400,
                      ),
                      heightSpace5,
                      const Divider(),
                      heightSpace5,
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
                      heightSpace5,
                      Text(
                        "12 Oct 2023 - 09:15PM",
                        style: BaseStyle.blackText12fw400,
                      ),
                      Text(
                        "12 Oct 2023 - 09:15PM",
                        style: BaseStyle.blackText12fw400,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
