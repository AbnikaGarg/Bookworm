import 'package:bookwormnew/utils/app_colors.dart';
import 'package:bookwormnew/utils/base_style.dart';
import 'package:bookwormnew/utils/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BuyPackagesScreen extends StatefulWidget {
  const BuyPackagesScreen({super.key});

  @override
  State<BuyPackagesScreen> createState() => _BuyPackagesScreenState();
}

class _BuyPackagesScreenState extends State<BuyPackagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Packages"),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                const Color(0x56E27329).withOpacity(0.4),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    children: [
                      Text('Available Balance -',
                          style: BaseStyle.blackText20fwBold),
                      widthSpace5,
                      Text('\$ 200 ', style: BaseStyle.geenText20fwBold),
                    ],
                  ),
                  heightSpace20,
                  Text('Currently Active Package',
                      style: BaseStyle.blackText20fwBold),
                  widthSpace5,
                  Text('Antrik', style: BaseStyle.blueText20fwBold),
                  heightSpace10,
                  Text('Expires On: 03/01/2024',
                      style: BaseStyle.blackText14fw500),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 30, top: 10),
                      width: Get.width,
                      child: Card(
                        color: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          padding: const EdgeInsets.only(top: 30, bottom: 20),
                          child: Column(
                            children: [
                              // heightSpace10,
                              Text(
                                "Antrik",
                                style: BaseStyle.blackText20fwBold,
                              ),
                              Text(
                                "1 Month Subscription",
                                style: BaseStyle.blackText10fw400,
                              ),
                              heightSpace20,
                              Text(
                                "\$100",
                                style: TextStyle(
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              heightSpace30,
                              ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return planservicelist();
                                  }),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 40),
                                child: Container(
                                  height: 40.h,
                                  width: 140.w,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColors.color1),
                                  child: Text(
                                    "Buy Now",
                                    style: BaseStyle.whitetext14fw600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

planservicelist() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: Padding(
      padding: const EdgeInsets.only(left: 60),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.check_circle,
          ),
          widthSpace10,
          Text(
            "Trading with best taders",
            style: BaseStyle.blackText14fw500,
          ),
        ],
      ),
    ),
  );
}
