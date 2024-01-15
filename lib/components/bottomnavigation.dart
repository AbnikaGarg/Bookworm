import 'package:bookwormnew/controllers/bottombar_controller.dart';
import 'package:bookwormnew/utils/app_colors.dart';
import 'package:bookwormnew/view/dashboard/dashbaord.dart';
import 'package:bookwormnew/view/profile/profile.dart';
import 'package:bookwormnew/view/withdraw/wallet_address.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/wallet/wallet_screen.dart';
// import 'package:get/get.dart';

class CustomBottomBar extends StatelessWidget {
   CustomBottomBar({super.key});
   

  List pages = [
     DashBoardScreen(),
    const Wallet(),
    const WalletAddressScreen(),
   Account(),
  ];
  // int currentIndex = 0;
  // void onTap(int index) {
  //   setState(() {
  //     currentIndex = index;
  //   });
  //}

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarController>(
        builder: (controller) => Scaffold(
          body: pages[controller.tabIndex],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
            child: BottomNavigationBar(
              unselectedFontSize: 0,
              selectedFontSize: 0,
              //    backgroundColor: Color(0x00ffffff),
    
              // backgroundColor: const Color(0x56E27329).withOpacity(0.05),
              type: BottomNavigationBarType.fixed,
              onTap: (value) {
                controller.changeTabIndex(value);
              },
              currentIndex: controller.tabIndex,
              selectedItemColor: AppColors.color1,
              unselectedItemColor: AppColors.blackColor,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              elevation: 0,
    
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.swap_horiz), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_balance_wallet_outlined), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
              ],
            ),
          ),
        )
      
    );
  }
}
