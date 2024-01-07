import 'package:bookwormnew/components/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';
import '../../utils/base_style.dart';
import '../../utils/image_strings.dart';

class ActivationCenterScreen extends StatefulWidget {
  const ActivationCenterScreen({super.key});

  @override
  State<ActivationCenterScreen> createState() => _ActivationCenterScreenState();
}

class _ActivationCenterScreenState extends State<ActivationCenterScreen> {
  bool isOpen = false;
  List<String> dropdownDataList = [
    "Activation Wallet1",
    "Activation Wallet2",
    "Activation Wallet3",
    "Activation Wallet4",
    "Activation Wallet5",
  ];
  String selectOption = "Please Select Mode";

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
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                height: 60.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.arrow_back_ios_new,
                      size: 18,
                    ),
                    widthSpace10,
                    Text(
                      "Activation Center",
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "SUBSEQUENT MONTH SUBSCRIPTION",
                          style: BaseStyle.orangeText14,
                        ),
                        Text(
                          "100 USDT",
                          style: BaseStyle.blackText16fw600,
                        ),
                        Text(
                          "(Subsequent Month Subscription)",
                          style: BaseStyle.blackText16fw600,
                        ),
                        heightSpace10,
                        InkWell(
                          onTap: () {
                            isOpen = !isOpen;

                            setState(() {});
                          },
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                                color: AppColors.lightGrey,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(selectOption),
                                  Icon(isOpen
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down)
                                ],
                              ),
                            ),
                          ),
                        ),
                        if (isOpen)
                          Container(
                            height: 100,
                            child: SingleChildScrollView(
                              child: ListView(
                                scrollDirection: Axis.vertical,
                                primary: true,
                                shrinkWrap: true,
                                children: dropdownDataList
                                    .map((e) => Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: InkWell(
                                                onTap: () {
                                                  selectOption = e;
                                                  isOpen = false;
                                                  setState(() {});
                                                },
                                                child: Text(e)),
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ),
                          ),
                        heightSpace20,
                        const CustomButton(title1: "ACTIVATE NOW"),
                        heightSpace10,
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
