
import 'package:bookwormnew/utils/app_colors.dart';
import 'package:bookwormnew/utils/base_style.dart';
import 'package:bookwormnew/utils/image_strings.dart';
import 'package:bookwormnew/view/wallet/add_funds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SidebaseScreen extends StatefulWidget {
  const SidebaseScreen({super.key});

  @override
  State<SidebaseScreen> createState() => _SidebaseScreenState();
}

class _SidebaseScreenState extends State<SidebaseScreen> {
  final List drawerMenuList = [
    {
      "leading": Icon(Icons.account_circle, color: AppColors.color1),
      "title": "Profile",
      "trailing": const Icon(Icons.chevron_right),
      "action_id": 1
    },
    {
      "leading": Icon(Icons.account_circle, color: AppColors.color1),
      "title": "Profile",
      "trailing": const Icon(Icons.chevron_right),
      "action_id": 2
    },
    {
      "leading": Icon(Icons.account_circle, color: AppColors.color1),
      "title": "Profile",
      "trailing": const Icon(Icons.chevron_right),
      "action_id": 3
    },
    {
      "leading": Icon(Icons.account_circle, color: AppColors.color1),
      "title": "Profile",
      "trailing": const Icon(Icons.chevron_right),
      "action_id": 4
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: 280.w,
      child: Drawer(
        // backgroundColor: AppColors.whiteColor,
        child: ListView(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assetName"),
              ),
              title: Text(
                "Avnika Goyal",
                style: BaseStyle.blackText16fw600,
              ),
              subtitle: const Text("5984512121"),
            ),
            heightSpace20,
            ...drawerMenuList.map((menuData) {
              return ExpansionTile(
                title: Text("Demo"),
                children: [
                  ListTile(
                    leading: menuData['leading'],
                    title: Text(menuData['title']),
                    trailing: menuData['trailing'],
                    onTap: () {
                      if (menuData["action_id"] == 1) {
                        Get.to(const AddFunds());
                      } else if (menuData["action_id"] == 2) {
                        Get.to(const AddFunds());
                      }
                    },
                  )
                ],
              );
            })
          ],
        ),
      ),
    ));
  }
}
