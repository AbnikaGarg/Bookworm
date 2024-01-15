import 'package:bookwormnew/view/packages/buy_packages.dart';
import 'package:bookwormnew/view/wallet/transfer_funds.dart';
import 'package:bookwormnew/view/withdraw/update_wallet_address.dart';
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
      "leadingIcon": commonListIcon(icon: Icons.home),
      "id": 10,
      "data": []
    },
    {
      "title1": "Manage Fund",
      "leadingIcon": commonListIcon(icon: Icons.account_balance_wallet_sharp),
      "id": 11,
      "data": [
        {
          "leading": commonListIcon(
            icon: Icons.chevron_right_outlined,
          ),
          "title": "Add Fund",
          "action_id": 1
        },
        {
          "leading": commonListIcon(
            icon: Icons.chevron_right_outlined,
          ),
          "title": "Transfer Fund",
          "action_id": 2
        },
        {
          "leading": commonListIcon(
            icon: Icons.chevron_right_outlined,
          ),
          "title": "Fund Request History",
          "action_id": 3
        },
      ]
    },
    {
      "title1": "Buy Package",
      "leadingIcon": commonListIcon(icon: Icons.shopping_cart),
      "id": 12,
      "data": [
        {
          "leading": commonListIcon(
            icon: Icons.chevron_right_outlined,
          ),
          "title": "Buy Package",
          "action_id": 5
        },
        {
          "leading": commonListIcon(
            icon: Icons.chevron_right_outlined,
          ),
          "title": "Package History",
          "action_id": 2
        },
      ]
    },
    {
      "title1": "Update wallet address",
      "leadingIcon": commonListIcon(icon: Icons.edit_document),
      "id": 13,
      "data": []
    },
    {
      "title1": "Withdrawal",
      "leadingIcon": commonListIcon(icon: Icons.shopping_bag),
      "id": 14,
      "data": [
        {
          "leading": commonListIcon(
            icon: Icons.chevron_right_outlined,
          ),
          "title": "Withdrawal Fund",
          "action_id": 1
        },
        {
          "leading": commonListIcon(
            icon: Icons.chevron_right_outlined,
          ),
          "title": "Withdrawal History",
          "action_id": 2
        },
      ]
    },
    {
      "title1": "Your Genealogy",
      "leadingIcon": commonListIcon(icon: Icons.account_balance_wallet_sharp),
      "id": 15,
      "data": []
    },
    {
      "title1": "Generation Income",
      "leadingIcon": commonListIcon(icon: Icons.account_balance_wallet_sharp),
      "id": 16,
      "data": []
    },
    {
      "title1": "Leavel Income",
      "leadingIcon": commonListIcon(icon: Icons.account_balance_wallet_sharp),
      "data": []
    },
    {
      "title1": "Global rewards",
      "leadingIcon": commonListIcon(icon: Icons.account_balance_wallet_sharp),
      "id": 17,
      "data": []
    },
    {
      "title1": "Bookkworm Live",
      "leadingIcon": commonListIcon(icon: Icons.account_balance_wallet_sharp),
      "id": 18,
      "data": []
    },
    {
      "title1": "Authontication",
      "leadingIcon": commonListIcon(icon: Icons.lock),
      "id": 19,
      "data": [
        {
          "leading": commonListIcon(
            icon: Icons.chevron_right_outlined,
          ),
          "title": "Change Passward",
          "action_id": 1
        },
      ]
    },
    {
      "title1": "Refer and earn",
      "leadingIcon": commonListIcon(icon: Icons.account_balance_wallet_sharp),
      "id": 20,
      "data": []
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: double.infinity,
      width: 280.w,
      color: const Color(0XFF17203A),
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white,
                      const Color(0x56E27329).withOpacity(0.4),
                    ]),
              ),
              child: ListTile(
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
            ),
            ...drawerMenuList.map((menuData) {
              return Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  iconColor: Colors.transparent,
                  collapsedIconColor: Colors.transparent,
                  leading: menuData["leadingIcon"],
                  title: Text(
                    menuData["title1"],
                    style: BaseStyle.blackText16fw600,
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
                                style: BaseStyle.blackText14fw500),
                            trailing: menuData["data"][index]['trailing'],
                            onTap: () {
                              if (menuData["data"][index]["action_id"] == 1) {
                                Get.to(const AddFunds());
                              } else if (menuData["data"][index]["action_id"] ==
                                  2) {
                                Get.to(const TransferFunds());
                              } else if (menuData["data"][index]["action_id"] ==
                                  3) {
                                Get.to(const AddFunds());
                              } else if (menuData["data"][index]["action_id"] ==
                                  5) {
                                Get.to(const BuyPackagesScreen());
                              } else if (menuData["data"][index]["action_id"] ==
                                  3) {
                                // Get.to(const AddFunds());
                              } else if (menuData["data"][index]["action_id"] ==
                                  3) {
                                // Get.to(const AddFunds());
                              } else if (menuData["data"][index]["action_id"] ==
                                  3) {
                                // Get.to(const AddFunds());
                              } else if (menuData["data"][index]["action_id"] ==
                                  3) {
                                // Get.to(const AddFunds());
                              } else if (menuData["data"][index]["action_id"] ==
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
    );
  }
}

commonListIcon({icon}) {
  return Icon(icon, color: AppColors.blackColor);
}
