import 'package:bookwormnew/view/packages/buy_packages.dart';
import 'package:bookwormnew/view/wallet/transfer_funds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/base_style.dart';
import '../../../utils/image_strings.dart';
import '../../wallet/add_funds.dart';

class SidebaseScreen extends StatefulWidget {
  const SidebaseScreen({super.key});

  @override
  State<SidebaseScreen> createState() => _SidebaseScreenState();
}

class _SidebaseScreenState extends State<SidebaseScreen> {
  final List drawerMenuList = [
    {
      "title1": "Dashboard",
      "leadingIcon": Icon(Icons.home, color: AppColors.whiteColor),
      "data": [
        {
          "leading": const Icon(Icons.chevron_right_outlined),
          "title": "Profile2",
          "action_id": 2
        },
      ]
    },
    {
      "title1": "Manage Fund",
      "leadingIcon":
          Icon(Icons.account_balance_wallet_sharp, color: AppColors.whiteColor),
      "data": [
        {
          "leading": Icon(
            Icons.chevron_right_outlined,
            color: AppColors.whiteColor,
          ),
          "title": "Add Fund",
          "action_id": 1
        },
        {
          "leading": Icon(
            Icons.chevron_right_outlined,
            color: AppColors.whiteColor,
          ),
          "title": "Transfer Fund",
          "action_id": 2
        },
        {
          "leading": Icon(
            Icons.chevron_right_outlined,
            color: AppColors.whiteColor,
          ),
          "title": "Fund Request History",
          "action_id": 3
        },
      ]
    },
    {
      "title1": "Buy Package",
      "leadingIcon": Icon(Icons.shopping_cart, color: AppColors.whiteColor),
      "data": [
        {
          "leading": Icon(
            Icons.chevron_right_outlined,
            color: AppColors.whiteColor,
          ),
          "title": "Buy Package",
          "action_id": 5
        },
        {
          "leading": Icon(
            Icons.chevron_right_outlined,
            color: AppColors.whiteColor,
          ),
          "title": "Package History",
          "action_id": 2
        },
      ]
    },
    {
      "title1": "Update wallet address",
      "leadingIcon": Icon(Icons.edit_document, color: AppColors.whiteColor),
      "data": [
        {
          "leading": Icon(
            Icons.chevron_right_outlined,
            color: AppColors.whiteColor,
          ),
          "title": "Profile1",
          "action_id": 1
        },
      ]
    },
    {
      "title1": "Withdrawal",
      "leadingIcon": Icon(Icons.shopping_bag, color: AppColors.whiteColor),
      "data": [
        {
          "leading": Icon(
            Icons.chevron_right_outlined,
            color: AppColors.whiteColor,
          ),
          "title": "Withdrawal Fund",
          "action_id": 1
        },
        {
          "leading": Icon(
            Icons.chevron_right_outlined,
            color: AppColors.whiteColor,
          ),
          "title": "Withdrawal History",
          "action_id": 2
        },
      ]
    },
    {
      "title1": "Your Genealogy",
      "leadingIcon":
          Icon(Icons.account_balance_wallet_sharp, color: AppColors.whiteColor),
      "data": [
        {
          "leading": Icon(
            Icons.chevron_right_outlined,
            color: AppColors.whiteColor,
          ),
          "title": "Profile2",
          "action_id": 2
        },
      ]
    },
    {
      "title1": "Generation Income",
      "leadingIcon":
          Icon(Icons.account_balance_wallet_sharp, color: AppColors.whiteColor),
      "data": [
        {
          "leading": Icon(
            Icons.chevron_right_outlined,
            color: AppColors.whiteColor,
          ),
          "title": "Profile1",
          "action_id": 1
        },
        {
          "leading": Icon(
            Icons.chevron_right_outlined,
            color: AppColors.whiteColor,
          ),
          "title": "Profile2",
          "action_id": 2
        },
      ]
    },
    {
      "title1": "Leavel Income",
      "leadingIcon":
          Icon(Icons.account_balance_wallet_sharp, color: AppColors.whiteColor),
      "data": [
        {
          "leading": Icon(
            Icons.chevron_right_outlined,
            color: AppColors.whiteColor,
          ),
          "title": "Profile1",
          "action_id": 1
        },
        {
          "leading": Icon(
            Icons.chevron_right_outlined,
            color: AppColors.whiteColor,
          ),
          "title": "Profile2",
          "action_id": 2
        },
      ]
    },
    {
      "title1": "Global rewards",
      "leadingIcon":
          Icon(Icons.account_balance_wallet_sharp, color: AppColors.whiteColor),
      "data": [
        {
          "leading": Icon(
            Icons.chevron_right_outlined,
            color: AppColors.whiteColor,
          ),
          "title": "Profile1",
          "action_id": 1
        },
        {
          "leading": Icon(
            Icons.chevron_right_outlined,
            color: AppColors.whiteColor,
          ),
          "title": "Profile2",
          "action_id": 2
        },
      ]
    },
    {
      "title1": "Bookkworm Live",
      "leadingIcon":
          Icon(Icons.account_balance_wallet_sharp, color: AppColors.whiteColor),
      "data": [
        {
          "leading": Icon(
            Icons.chevron_right_outlined,
            color: AppColors.whiteColor,
          ),
          "title": "Profile1",
          "action_id": 1
        },
        {
          "leading": Icon(
            Icons.chevron_right_outlined,
            color: AppColors.whiteColor,
          ),
          "title": "Profile2",
          "action_id": 2
        },
      ]
    },
    {
      "title1": "Authontication",
      "leadingIcon": Icon(Icons.lock, color: AppColors.whiteColor),
      "data": [
        {
          "leading": Icon(
            Icons.chevron_right_outlined,
            color: AppColors.whiteColor,
          ),
          "title": "Change Password",
          "action_id": 1
        },
      ]
    },
    {
      "title1": "Refer and earn",
      "leadingIcon":
          Icon(Icons.account_balance_wallet_sharp, color: AppColors.whiteColor),
      "data": [
        {
          "leading": Icon(
            Icons.chevron_right_outlined,
            color: AppColors.whiteColor,
          ),
          "title": "Profile2",
          "action_id": 2
        },
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 280.w,
        child: Drawer(
          backgroundColor: const Color(0XFF000000).withOpacity(0.9),
          // backgroundColor: AppColors.whiteColor,
          child: ListView(
            children: [
              heightSpace20,
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.white24,
                  child: Icon(Icons.person),
                ),
                title: Text(
                  "Avnika Goyal",
                  style: BaseStyle.whitetext14fw600,
                ),
                subtitle: Text(
                  "5984512121",
                  style: BaseStyle.whitetext16fw700,
                ),
              ),
              Divider(color: AppColors.backGround2),
              heightSpace10,
              ...drawerMenuList.map((menuData) {
                return Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    iconColor: AppColors.whiteColor,
                    leading: menuData["leadingIcon"],
                    title: Text(
                      menuData["title1"],
                      style: BaseStyle.whitetext14fw600,
                    ),
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: menuData["data"].length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: menuData["data"][index]['leading'],
                              title: Text(menuData["data"][index]['title'],
                                  style: BaseStyle.whitetext14),
                              trailing: menuData["data"][index]['trailing'],
                              onTap: () {
                                if (menuData["data"][index]["action_id"] == 1) {
                                  Get.to(const AddFunds());
                                } else if (menuData["data"][index]
                                        ["action_id"] ==
                                    2) {
                                  Get.to(const TransferFunds());
                                } else if (menuData["data"][index]
                                        ["action_id"] ==
                                    3) {
                                  Get.to(const AddFunds());
                                } else if (menuData["data"][index]
                                        ["action_id"] ==
                                    5) {
                                  Get.to(const BuyPackagesScreen());
                                } else if (menuData["data"][index]
                                        ["action_id"] ==
                                    3) {
                                  // Get.to(const AddFunds());
                                } else if (menuData["data"][index]
                                        ["action_id"] ==
                                    3) {
                                  // Get.to(const AddFunds());
                                } else if (menuData["data"][index]
                                        ["action_id"] ==
                                    3) {
                                  // Get.to(const AddFunds());
                                } else if (menuData["data"][index]
                                        ["action_id"] ==
                                    3) {
                                  // Get.to(const AddFunds());
                                } else if (menuData["data"][index]
                                        ["action_id"] ==
                                    3) {
                                  // Get.to(const AddFunds());
                                } else if (menuData["data"][index]
                                        ["action_id"] ==
                                    3) {
                                  // Get.to(const AddFunds());
                                }
                              },
                            );
                          }),
                    ],
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
