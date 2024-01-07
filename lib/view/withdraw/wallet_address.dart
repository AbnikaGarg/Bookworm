
import 'package:bookwormnew/utils/app_colors.dart';
import 'package:bookwormnew/utils/base_style.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../components/custombutton.dart';
import '../../utils/image_strings.dart';
import 'income_wallet.dart';

class WalletAddressScreen extends StatefulWidget {
  const WalletAddressScreen({super.key});

  @override
  State<WalletAddressScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 20,
        ),
        title: Text("Update Wallet Address", style: BaseStyle.blackText16fw600),
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
              child: Card(
                elevation: 4,
                semanticContainer: true,
                shadowColor: Colors.grey,
                color: AppColors.whiteColor,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.whiteColor),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: SingleChildScrollView(
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
                        Card(
                          elevation: 2,
                          shadowColor: Colors.black,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.lightGrey,
                            ),
                            child: TextFormField(
                              style: BaseStyle.blackText14fw400,
                              decoration: const InputDecoration(
                                  border: InputBorder.none),
                            ),
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
                        heightSpace70,
                      ],
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
