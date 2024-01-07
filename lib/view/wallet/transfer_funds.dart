import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/text_fields.dart';
import '../../utils/app_colors.dart';
import '../../utils/base_style.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          size: 18,
        ),
        title: Text(
          "Transfer Funds",
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
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightSpace20,
                Text(
                  "Available Fund -105.00",
                  style: BaseStyle.blackText18fw600,
                ),
                Text(
                  "Activation Wallet / Transfer Fund",
                  style: BaseStyle.blackText18fw600,
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
                          // Text(
                          //   "Transfer To",
                          //   style: BaseStyle.blackText14fw500,
                          // ),
                          // heightSpace10,
                          // CustomTextFieldWithBorder(
                          //   textController: c1,
                          // ),
                          // heightSpace10,
                          // Text(
                          //   "Enter Amount To Transfer",
                          //   style: BaseStyle.blackText14fw500,
                          // ),
                          // heightSpace10,
                          // CustomTextFieldWithBorder(
                          //   textController: c1,
                          // ),
                          // heightSpace10,
                          // Text(
                          //   "Password",
                          //   style: BaseStyle.blackText14fw500,
                          // ),
                          // heightSpace10,
                          // CustomTextFieldWithBorder(
                          //   textController: c1,
                          // ),
                          // heightSpace10,
                          Row(
                            children: [
                              commonButton(
                                  title: "Transfer Fund",
                                  color: AppColors.buttoncolor2,
                                  width: 130.w),
                              widthSpace10,
                              commonButton(
                                  title: "Cancel",
                                  color: AppColors.buttoncolor1,
                                  width: 100.w),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

commonButton({title, color, width}) {
  return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      height: 40.h,
      width: width,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(5), color: color),
      child: Text(
        title,
        style: BaseStyle.whitetext14fw600,
      ));
}
