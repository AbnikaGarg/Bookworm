import 'package:bookwormnew/utils/app_colors.dart';
import 'package:bookwormnew/utils/base_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../components/custombutton.dart';
import '../../utils/image_strings.dart';
import 'transaction_history.dart';

class UpdateWalletAddressScreen extends StatefulWidget {
  const UpdateWalletAddressScreen({super.key});

  @override
  State<UpdateWalletAddressScreen> createState() =>
      _UpdateWalletAddressScreenState();
}

class _UpdateWalletAddressScreenState extends State<UpdateWalletAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        title: Text("Update Wallet Address", style: BaseStyle.blackText18fw600),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
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
          Form(
            child: Container(
              margin: const EdgeInsets.only(top: 110, left: 10, right: 10),
              width: Get.width,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        offset: const Offset(0.0, 0.0), //(x,y)
                        // blurRadius: 1.0,
                        spreadRadius: 0),
                  ],
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  elevation: 4,
                  semanticContainer: true,
                  shadowColor: Colors.grey,
                  color: AppColors.whiteColor,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            "You can only add your crypto wallet once. If you want to add any other address or make any changes, please contact us through the ticket section available in your back office.",
                            style: BaseStyle.blackText14fw400,
                          ),
                          heightSpace20,
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "USDT(TRC20) ADDRESS:",
                              style: BaseStyle.orangeText14fw700,
                            ),
                          ),
                          heightSpace20,
                          Container(
                            height: 42.h,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: AppColors.lightGrey,
                              borderRadius: BorderRadius.circular(10.0),
                              // color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 0.5), //(x,y)
                                  blurRadius: 0.2,
                                ),
                              ],
                            ),
                            child: TextFormField(
                              style: BaseStyle.blackText14fw400,
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(bottom: 12),
                                  border: InputBorder.none),
                            ),
                          ),
                          heightSpace20,
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Add your external ‘receive’ USDT address",
                              style: BaseStyle.blackText14fw400,
                            ),
                          ),
                          heightSpace30,
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const IncomeWallet());
                            },
                            child: const CustomButton(
                              title1: "UPDATE",
                            ),
                          ),
                          heightSpace40,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
