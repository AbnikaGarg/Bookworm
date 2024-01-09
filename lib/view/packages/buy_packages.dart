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
                      Text('Available Balance',
                          style: BaseStyle.blackText20fwBold),
                      widthSpace5,
                      Text('\$ 200 ', style: BaseStyle.geenText20fwBold),
                    ],
                  ),
                  heightSpace20,
                  Wrap(
                    children: [
                      Text('Currently Active Package',
                          style: BaseStyle.blackText20fwBold),
                      widthSpace5,
                      Text('Antrik', style: BaseStyle.blueText20fwBold),
                    ],
                  ),
                  heightSpace10,
                  Text('Expires On: 03/01/2024',
                      style: BaseStyle.blackText14fw500),
                ],
              ),
            ),
            heightSpace20,
            SizedBox(
              height: 450.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      width: Get.width,
                      // color: Colors.cyanAccent,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Antrik",
                              style: BaseStyle.blackText18fw600,
                            ),
                            Text(
                              "1 Month Subscription",
                              style: BaseStyle.blackText10fw400,
                            ),
                            heightSpace20,
                            Text(
                              "\$100",
                              style: TextStyle(
                                  fontSize: 30.sp, fontWeight: FontWeight.bold),
                            ),
                            heightSpace30,
                            ListView.builder(
                                shrinkWrap: true,
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return planservicelist();
                                }),
                            heightSpace50,
                            Container(
                              height: 40.h,
                              width: 130.w,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColors.color1),
                              child: Text(
                                "Choose Pack",
                                style: BaseStyle.whitetext14fw600,
                              ),
                            ),
                          ],
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
      padding: const EdgeInsets.only(left: 50),
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
